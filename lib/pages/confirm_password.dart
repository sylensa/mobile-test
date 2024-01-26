import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';

import '../controllers/login_controller.dart';
import '../controllers/reset_password_controller.dart';
import '../themes/colors.dart';
import '../themes/themes.dart';

class ConfirmPassword extends ConsumerWidget {
  const ConfirmPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child:      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Grow',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: darkBlueTextColor),
                    ),
                    Text(
                      'Sphere',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 26,
                          color: darkBlueTextColor),
                    ),
                    Text(
                      'TM',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          color: darkBlueTextColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: ConfirmPasswordForm(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/images/netafim logo.svg"),
                    SvgPicture.asset("assets/images/orbia logo.svg"),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

final resetPasswordFormKey = GlobalKey<FormState>();

class ConfirmPasswordForm extends HookConsumerWidget {
  const ConfirmPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();//User14356, Avi223344, Usercomp001
    final state = ref.watch(loginControllerProvider);
    final notifier = ref.read(loginControllerProvider.notifier);
    final userIdController = useTextEditingController();
    ref.listen(resetPasswordNotifierProvider.select((value) => value.error),
            (previous, next) {
          if (next != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(next),
              action: SnackBarAction(
                label: 'dismiss'.tr(context),
                onPressed: () =>
                    ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ),
            ));
          }
        });
    ref.listen(loginControllerProvider.select((value) => value.success),
            (previous, next) {
          if (next) context.go(Routing.homePage);
        });
    return Form(
      key: resetPasswordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             UiHelper().appTextTranslation('resetPassword',context: context,
                 size: 18,
                 color: Colors.black,
                 weight: FontWeight.normal,
                 lHeight: 2,
                 family: 'Roboto'),
             const SizedBox(height: 20),
              Text('UserSetting.password.newpassword'.tr(context), style: textFieldLabelStyle),
             const SizedBox(height: 10),
             TextFormField(
               validator: passwordValidator,
               controller: passwordController,
               textInputAction: TextInputAction.done,
             ),

             const SizedBox(height: 20),
             Text('confirmNewPassword'.tr(context), style: textFieldLabelStyle),
             const SizedBox(height: 10),
             TextFormField(
               validator: passwordValidator,
               controller: passwordController,
               textInputAction: TextInputAction.done,
             ),

           ],
         ),
         Expanded(child: Container()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: state.loading
                    ? null
                    : () {

                },
                child: Container(
                  width: 150,
                  padding: EdgeInsets.only(top: 5,bottom: 10,right: 10,left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: primaryColor)
                  ),
                  child: state.loading
                      ?  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 2),
                        child: const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 5,
                            )),
                      ),
                    ],
                  )
                      : Center(child:  UiHelper().appTextTranslation('cancel',context: context,align: TextAlign.center,color: primaryColor,)),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: state.loading
                    ? null
                    : () {
                  context.push(Routing.confirmationPage);
                },
                child: Container(
                  width: 150,
                  padding: EdgeInsets.only(top: 5,bottom: 10,right: 10,left: 10),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: state.loading
                      ?  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 2),
                        child: const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 5,
                            )),
                      ),
                    ],
                  )
                      : Center(child: Text('save'.tr(context),textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return 'required';
    return null;
  }
}
