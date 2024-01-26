import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/controllers/user_settings_controller.dart';
import 'package:netafim_mobile/data_sources/shared_prefs.dart';
import 'package:netafim_mobile/models/requests/update_account_payload.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';

import '../controllers/login_controller.dart';

class AccountPage extends StatefulHookConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(updateAccountProvider);
    final userPrefs = ref.watch(userPrefsProvider).valueOrNull;
    final firstName =
        useTextEditingController(text: userPrefs?.firstName ?? "");
    final lastName = useTextEditingController(text: userPrefs?.lastName ?? "");
    final email = useTextEditingController(text: userPrefs?.email ?? "");
    final phoneNumber =
        useTextEditingController(text: userPrefs?.phoneNumber ?? "");

    ref.listen(updateAccountProvider.select((value) => value.error),
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

    ref.listen(updateAccountProvider.select((value) => value.success),
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
      height: 450,
      color: primaryFadeColor,
      width: UiHelper().appWidth(context),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            UiHelper().appTextTranslation("UserSetting.account.firstname",
                                color: Colors.grey, weight: FontWeight.w500, context: context),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: firstName,
                              style:
                                  UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  borderColor: Colors.grey[300]!),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            UiHelper().appTextTranslation("UserSetting.account.lastname",
                                color: Colors.grey, weight: FontWeight.w500, context: context),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: lastName,
                              style:
                                  UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  borderColor: Colors.grey[300]!),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            UiHelper().appTextTranslation("UserSetting.account.phonenumber",
                                color: Colors.grey, weight: FontWeight.w500, context: context),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: phoneNumber,
                              style:
                                  UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  borderColor: Colors.grey[300]!),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            UiHelper().appTextTranslation("UserSetting.account.email",
                                color: Colors.grey, weight: FontWeight.w500, context: context),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: email,
                              style:
                                  UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  borderColor: Colors.grey[300]!),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              SharedPrefs.clearAccount();
                              ref.read(isLoggedInProvider.notifier).state =
                                  false;
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey[200]!),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: UiHelper().appTextTranslation("UserSetting.account.logout",
                                    color: Colors.grey[200]!,
                                    weight: FontWeight.w500,
                                    align: TextAlign.center, context: context)),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (email.text.isNotEmpty &&
                                  firstName.text.isNotEmpty &&
                                  lastName.text.isNotEmpty &&
                                  phoneNumber.text.isNotEmpty) {
                                UpdateAccountPayload updateAccountPayload =
                                    UpdateAccountPayload(
                                        email: email.text,
                                        firstName: firstName.text,
                                        lastName: lastName.text,
                                        phoneNumber: phoneNumber.text);
                                ref
                                    .read(updateAccountProvider.notifier)
                                    .updateAccount(updateAccountPayload);
                              } else {
                                UiHelper()
                                    .toastMessage("required".tr(context));
                              }
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: 120,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: state.loading
                                    ? Stack(
                                  alignment: Alignment.center,
                                      children: [
                                        const SizedBox(
                                            width: 16,
                                            height: 16,
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                              strokeWidth: 2,
                                            )),
                                      ],
                                    )
                                    : UiHelper().appTextTranslation("update",
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        align: TextAlign.center, context: context)),
                          ),
                        ],
                      ),
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
