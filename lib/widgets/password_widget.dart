import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/controllers/user_settings_controller.dart';
import 'package:netafim_mobile/models/requests/change_password_payload.dart';
import 'package:netafim_mobile/models/requests/update_account_payload.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';

class PasswordResetPage extends ConsumerStatefulWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends ConsumerState<PasswordResetPage> {
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(changePasswordProvider);
    ref.listen(changePasswordProvider.select((value) => value.error),
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

    ref.listen(changePasswordProvider.select((value) => value.success),
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
            // UiHelper().showSuccessToast(context,"Account updated successfully");
          }
        });
    return  Container(
      height: 360,
      color: primaryFadeColor,
      width: UiHelper().appWidth(context),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            UiHelper().appTextTranslation("UserSetting.password.currentpassword",color: Colors.grey,weight: FontWeight.w400, context: context,size: 16),
                            const SizedBox(height: 10,),
                            TextField(
                              controller: currentPassword,
                              obscureText: true,
                              style: UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                borderColor: Colors.grey[300]!
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            UiHelper().appTextTranslation("UserSetting.password.newpassword",color: Colors.grey,weight: FontWeight.w400, context: context,size: 16),
                            const SizedBox(height: 10,),
                            TextField(
                              controller: newPassword,
                              obscureText: true,
                              style: UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                  borderColor: Colors.grey[300]!
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            UiHelper().appTextTranslation("UserSetting.password.confirmpassword",color: Colors.grey,weight: FontWeight.w400, context: context,size: 16),
                            const SizedBox(height: 10,),
                            TextField(
                              controller: confirmPassword,
                              obscureText: true,
                              style: UiHelper().appStyle(weight: FontWeight.w500),
                              decoration: UiHelper().textFieldInputDecoration(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                  borderColor: Colors.grey[300]!
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            GestureDetector(
                              onTap: (){
                                if(currentPassword.text.isNotEmpty && confirmPassword.text.isNotEmpty && newPassword.text.isNotEmpty ){
                                  if(newPassword.text == confirmPassword.text){
                                    ChangePasswordPayload changePasswordPayload = ChangePasswordPayload(
                                        CurrentPassword: currentPassword.text,
                                        NewPassword: newPassword.text
                                    );
                                    ref.read(changePasswordProvider.notifier).changePassword(changePasswordPayload);
                                  }else{
                                    UiHelper().toastMessage("passwordsNotNotEqual".tr(context));
                                  }
                                }else{
                                  UiHelper().toastMessage("required".tr(context));
                                }
                              },
                              child:  Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: state.loading
                                      ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      )) : UiHelper().appTextTranslation("update",color: Colors.white,weight: FontWeight.w500,align: TextAlign.center, context: context)
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
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
