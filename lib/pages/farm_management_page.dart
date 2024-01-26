import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/models/country.dart';
import 'package:netafim_mobile/models/requests/update_farm_playload.dart';
import 'package:netafim_mobile/models/timezone.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/bottomsheet_ex.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/widgets/selection_list_view.dart';

import '../controllers/farms_controller.dart';
import '../models/state_district.dart';
import '../utils/widgets/drop_down_field.dart';

class FarmManagementPage extends StatefulHookConsumerWidget {
  const FarmManagementPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FarmManagementPage> createState() => _FarmManagementPageState();
}

class _FarmManagementPageState extends ConsumerState<FarmManagementPage> {
  bool beginsMonday = true;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(updateFarmProvider);
    final currentFarm = ref.watch(selectedFarmProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);
    final selectedState = ref.watch(selectedStateDistrictProvider(selectedCountry?.isoSymbol));
    final farmNameController = useTextEditingController(text: currentFarm?.farmName ?? '');
    useEffect(() {
      farmNameController.text = currentFarm?.farmName ?? '';
    }, [currentFarm]);

    useListenable(farmNameController);
    listenToUpdateFarmError(context);
    listenToUpdateFarmSuccess(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryFadeColor,
        titleSpacing: 0,
        centerTitle:  false,
        leadingWidth: 30,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // SvgPicture.asset(Images.farmManagement),
              // const SizedBox(
              //   width: 10,
              // ),
              UiHelper().appTextTranslation("Menu.farmManagement",context: context,
                  color: Colors.black, weight: FontWeight.w500, size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       UiHelper().appTextTranslation("FarmManagement.farmName", size: 18,context: context),
                       const SizedBox(
                         height: 10,
                       ),
                       SizedBox(
                         height: 50,
                         child: Center(
                           child: TextField(
                             decoration: UiHelper().textFieldInputDecoration(
                               padding: const EdgeInsets.symmetric(
                                   vertical: 10, horizontal: 10),
                             ),
                             controller: farmNameController,
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       Row(
                         children: [
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 UiHelper().appTextTranslation("FarmManagement.country", size: 18,context: context),
                                 const SizedBox(
                                   height: 10,
                                 ),
                                 DropDownField(
                                   value: selectedCountry?.name,
                                   onTap: () {
                                     const CountriesListView().asBottomSheet(context, title: 'FarmManagement.selectCountry'.tr(context));
                                   },
                                 ),
                               ],
                             ),
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 UiHelper().appTextTranslation("FarmManagement.stateDistrict", size: 18,context: context),
                                 const SizedBox(
                                   height: 10,
                                 ),
                                 DropDownField(
                                   value: selectedState?.name,
                                   onTap: () {
                                     const StatesDistrictsListView().asBottomSheet(
                                         context,
                                         title: 'FarmManagement.selectState'.tr(context));
                                   },
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       Row(
                         children: [
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 UiHelper().appTextTranslation("FarmManagement.timeZone", size: 18,context: context),
                                 const SizedBox(
                                   height: 10,
                                 ),
                                 Row(
                                   children: [
                                     Expanded(
                                       child: DropDownField(
                                         value: ref
                                             .watch(selectedTimezoneProvider)
                                             ?.ianaId,
                                         onTap: () {
                                           const TimezonesListView().asBottomSheet(context,
                                               title: 'FarmManagement.selectTimezone'.tr(context));
                                         },
                                       ),
                                     ),
                                     Expanded(child: Container())
                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(
                         height: 20,
                       ),
                       UiHelper().appTextTranslation("FarmManagement.dayWeek", size: 18,context: context),

                     ],
                   ),
                 ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // FlutterSwitch(
                      //   width: 55.0,
                      //   height: 25.0,
                      //   valueFontSize: 10.0,
                      //   toggleSize: 20.0,
                      //   value: ref.watch(firstDayProvider) == 'Monday',
                      //   borderRadius: 30.0,
                      //   padding: 2.0,
                      //   switchBorder: Border.all(color: primaryColor),
                      //   showOnOff: false,
                      //   activeColor: Colors.white,
                      //   inactiveColor: Colors.white,
                      //   inactiveTextColor: Colors.red,
                      //   inactiveToggleColor: primaryColor,
                      //   toggleColor: primaryColor,
                      //   onToggle: (val) async {
                      //     ref.read(firstDayProvider.notifier).state =
                      //         val ? 'Monday' : 'Sunday';
                      //   },
                      // ),
                      Container(
                        width: 150,
                        padding: const EdgeInsets.symmetric(horizontal: 10),

                        child: RadioListTile(
                          visualDensity: VisualDensity(horizontal: -4, vertical: 0),

                          contentPadding: EdgeInsets.zero,
                          value: 'Sunday',
                          groupValue: ref.watch(firstDayProvider),
                          onChanged: (value) async{
                            ref.read(firstDayProvider.notifier).state = 'Sunday';
                          },
                          title:  Align(
                            alignment: Alignment(-1.8, 0),
                            child: UiHelper()
                                .appTextTranslation("FarmManagement.sunday", weight: FontWeight.w500, context: context,color: Colors.black,align: TextAlign.left),
                          ),
                        ),
                      ),


                      SizedBox(
                        width: 150,
                        child: RadioListTile(
                          visualDensity: VisualDensity(horizontal: -4, vertical: 0),
                          contentPadding: EdgeInsets.zero,
                          value:  'Monday',
                          groupValue:  ref.watch(firstDayProvider),
                          onChanged: (value)async {
                            ref.read(firstDayProvider.notifier).state = 'Monday' ;
                          },
                          title:   Align(
                              alignment: Alignment(-1.5, 0),

                              child: UiHelper().appTextTranslation("FarmManagement.monday", weight: FontWeight.w500, context: context,color: Colors.black)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 5),
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: UiHelper().appTextTranslation("cancel",context: context,
                            color: primaryColor,
                            weight: FontWeight.w500,
                            align: TextAlign.center)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: farmNameController.text.isNotEmpty
                        ? () {
                            updateFarm(farmNameController);
                          }
                        : null,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 5),
                      width: 120,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: state.loading
                          ? UiHelper().progress()
                          : UiHelper().appTextTranslation("save",context: context,
                              color: Colors.white,
                              weight: FontWeight.w500,
                              align: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  void updateFarm(TextEditingController farmNameController) {
    final name = farmNameController.text;
    final country = ref.read(selectedCountryProvider);
    final stateDistrict = ref.read(selectedStateDistrictProvider(country?.isoSymbol));
    final timezone = ref.read(selectedTimezoneProvider);
    final firstDay = ref.read(firstDayProvider);
    UpdateFarmPayload payload = UpdateFarmPayload(
        farmName: name,
        country: country?.name,
        countryCode: country?.isoSymbol,
        countrySubdivisionCode: stateDistrict?.stateIsoCode,
        ianaTimezoneId: timezone?.ianaId,
        firstDayOfWeek: firstDay);
    ref.read(updateFarmProvider.notifier).updateFarm(payload);
  }

  void listenToUpdateFarmSuccess(BuildContext context) {
    ref.listen(updateFarmProvider.select((value) => value.success),
        (previous, next) {
      if (next) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: snackBarColor,
              content: Text("farmUpdatedSuccessfully".tr(context)),
              showCloseIcon: true,
              closeIconColor: Colors.white,
              action: SnackBarAction(
                label: '',
                onPressed: () =>
                    ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ),
            ));
        // UiHelper().showSuccessToast(context, "Farm updated successfully");
      }
    });
  }

  void listenToUpdateFarmError(BuildContext context) {
    ref.listen(updateFarmProvider.select((value) => value.error),
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
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Text(next),
        //   action: SnackBarAction(
        //     label: 'dismiss',
        //     onPressed: () =>
        //         ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        //   ),
        // ));
      }
    });
  }
}

class CountriesListView extends ConsumerWidget {
  const CountriesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countriesState = ref.watch(countriesProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);
    return SelectionListView<Country>(
      asyncValue: countriesState,
      title: (item) => item.name,
      onItemSelected: (item) {
        ref.read(selectedCountryProvider.notifier).state = item;
        Navigator.pop(context);
      },
      initialSelection: (item) => item == selectedCountry,
    );
  }
}

class StatesDistrictsListView extends ConsumerWidget {
  const StatesDistrictsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(selectedCountryProvider);
    final statesDistrictsState =
        ref.watch(statesDistrictsProvider(selectedCountry?.isoSymbol));
    final selected =
        ref.watch(selectedStateDistrictProvider(selectedCountry?.isoSymbol));
    return SelectionListView<StateDistrict>(
      asyncValue: statesDistrictsState,
      title: (item) => item.name,
      onItemSelected: (item) {
        ref
            .read(selectedStateDistrictProvider(selectedCountry?.isoSymbol)
                .notifier)
            .state = item;
        Navigator.pop(context);
      },
      initialSelection: (item) => item == selected,
    );
  }
}

class TimezonesListView extends ConsumerWidget {
  const TimezonesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timezonesState = ref.watch(timezonesProvider);
    final selected = ref.watch(selectedTimezoneProvider);
    return SelectionListView<Timezone>(
      asyncValue: timezonesState,
      title: (item) => item.displayName,
      onItemSelected: (item) {
        ref.read(selectedTimezoneProvider.notifier).state = item;
        Navigator.pop(context);
      },
      initialSelection: (item) => item == selected,
    );
  }
}
