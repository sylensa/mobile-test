import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/controllers/user_settings_controller.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/models/culture.dart';
import 'package:netafim_mobile/models/requests/update_system_payload.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/bottomsheet_ex.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/widgets/drop_down_field.dart';
import 'package:netafim_mobile/utils/widgets/selection_list_view.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import '../controllers/cultures_controller.dart';

class SystemPage extends ConsumerStatefulWidget {
  const SystemPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SystemPage> createState() => _SystemPageState();
}

class _SystemPageState extends ConsumerState<SystemPage> {
  bool isNotRefresh = true;
  Culture? selectedCulture;

  @override
  Widget build(BuildContext context) {
    final userPrefs = ref.watch(userPrefsProvider).valueOrNull;
    final String systemUnit = ref.watch(farmUnitSystemProvider);

    print("userPrefs?.culture:${userPrefs?.culture}");
    final cultures = ref.watch(culturesProvider);
    for (int i = 0; i < cultures.length; i++) {
      if (cultures[i].culture.toLowerCase() ==
          userPrefs?.culture!.toLowerCase()) {
        selectedCulture = cultures[i];
      }
    }

    final state = ref.watch(updateSystemProvider);
    ref.listen(updateSystemProvider.select((value) => value.error),
        (previous, next) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: snackBarColor,
              content: Text(next),
              showCloseIcon: true,
              closeIconColor: Colors.white,
              action: SnackBarAction(
                label: '',
                onPressed: () =>
                    ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ),
            ));

      }
    });

    ref.listen(updateSystemProvider.select((value) => value.success),
        (previous, next) {
      if (next) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: snackBarColor,
              content: Text("updatedSuccessfully".tr(context)),
              showCloseIcon: true,
              closeIconColor: Colors.white,
              action: SnackBarAction(
                label: '',
                onPressed: () =>
                    ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ),
            ));
        // UiHelper().showSuccessToast(context, "Account updated successfully");
      }
    });
    return Container(
      height: 370,
      color: primaryFadeColor,
      width: UiHelper().appWidth(context),
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: UiHelper().appTextTranslation("language",weight:FontWeight.w500,color: Colors.grey, context: context ),
                            // style:TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      cultures.isNotEmpty
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: DropDownField(
                                value: selectedCulture != null
                                    ? selectedCulture!.name
                                    : "",
                                onTap: () {
                                  LanguageListView(
                                    selectedCulture: selectedCulture!,
                                  ).asBottomSheet(context,
                                      title: 'selectLanguage'.tr(context));
                                },
                              ),
                            )
                          : Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: UiHelper().appTextTranslation("loadingLanguages",context: context)),
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                UiHelper().appTextTranslation("UserSetting.system.unit", weight: FontWeight.w400, context: context,color: Colors.grey),
                                const SizedBox(
                                  width: 10,
                                ),
                                state.loading
                                    ? Center(child: UiHelper().progress(size: 15))
                                    : const SizedBox.shrink(),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: RadioListTile(
                                    visualDensity: VisualDensity(horizontal: -4, vertical: 0),

                                    contentPadding: EdgeInsets.zero,
                                    value: "SI",
                                    groupValue: systemUnit,
                                    onChanged: (value)async {
                                      UpdateSystemPayload updateSystemPayload =
                                      UpdateSystemPayload(
                                          unitsSystem:  "SI",
                                          culture: selectedCulture != null
                                              ? selectedCulture!.culture
                                              : "en");
                                      await ref.read(updateSystemProvider.notifier).updateSystem(updateSystemPayload);
                                    },
                                    title:   Align(
                                        alignment: Alignment(-4, 0),

                                        child: UiHelper().appTextTranslation("UserSetting.system.metric", weight: FontWeight.w500, context: context,color: Colors.black)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: RadioListTile(
                                    visualDensity: VisualDensity(horizontal: -4, vertical: 0),

                                    contentPadding: EdgeInsets.zero,
                                    value: "BI",
                                    groupValue:systemUnit,
                                    onChanged: (value) async{
                                      UpdateSystemPayload updateSystemPayload =
                                      UpdateSystemPayload(
                                          unitsSystem:  "BI",
                                          culture: selectedCulture != null
                                              ? selectedCulture!.culture
                                              : "en");
                                      await ref.read(updateSystemProvider.notifier).updateSystem(updateSystemPayload);
                                    },

                                    title:  Align(
                                        alignment: Alignment(-2.5, 0),

                                        child: UiHelper().appTextTranslation("UserSetting.system.imperial", weight: FontWeight.w500, context: context,color: Colors.black)),
                                  ),
                                ),



                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageListView extends ConsumerWidget {
  LanguageListView({Key? key, required this.selectedCulture}) : super(key: key);
  Culture selectedCulture;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cultures = ref.watch(culturesProvider);
    return SelectionListView<Culture>(
      notAsyncData: cultures,
      isAsync: false,
      asyncValue: null,
      title: (item) => item.name,
      onItemSelected: (culture) async {
        Navigator.pop(context);
        ref.read(currentLocaleProvider.notifier).state = Locale(culture.culture);
        SharedPrefs.saveSelectedCulture(culture);
        final String systemUnit = ref.read(farmUnitSystemProvider);
        UpdateSystemPayload updateSystemPayload =
            UpdateSystemPayload(unitsSystem: systemUnit, culture: culture.culture);
        await ref
            .read(updateSystemProvider.notifier)
            .updateSystem(updateSystemPayload);

      },
      initialSelection: (item) => item == selectedCulture,
    );
  }
}
