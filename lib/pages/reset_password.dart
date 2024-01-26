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

class ResetPassword extends ConsumerWidget {
  const ResetPassword({
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
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: ResetPasswordForm(),
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

class ResetPasswordForm extends HookConsumerWidget {
  const ResetPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userIdController = useTextEditingController();
    final state = ref.watch(resetPasswordNotifierProvider);
    final notifier = ref.read(resetPasswordNotifierProvider.notifier);
    ref.listen(resetPasswordNotifierProvider.select((value) => value.error),
        (previous, next) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(next),
          action: SnackBarAction(
            label: 'dismiss',
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
        children: [
          UiHelper().appTextTranslation('resetPassword',context: context,
              size: 18,
              color: Colors.black,
              weight: FontWeight.normal,
              lHeight: 2,
              family: 'Roboto'),
          const SizedBox(height: 20),
           Text('UserSetting.account.email'.tr(context), style: textFieldLabelStyle),
          const SizedBox(height: 5),
          TextFormField(
              autofocus: true,
              validator: usernameValidator,
              controller: userIdController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: state.loading
                  ? const InputDecoration(
                      fillColor: primaryFadeColor,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    )
                  : UiHelper().textFieldInputDecoration(
                      borderColor: Colors.grey[200]!,
                      enabled: true,
                      focusColor: Colors.grey[400]!,
                      suffixIcon: Icon( Icons.keyboard_arrow_down,size: 30,color: Colors.black,),
                    )),
          const SizedBox(height: 24),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(height: 24),

          Center(
            child: InkWell(
              onTap: state.loading
                  ? null
                  : () {
                context.push(Routing.confirmPassword);
                final valid =
                resetPasswordFormKey.currentState!.validate();
                if (valid) {
                  notifier.sendResetPassword(userIdController.text);
                }
              },
              child: Container(
                width: 200,
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
                    : Center(child:  Text('sendResetLink'.tr(context),textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? usernameValidator(String? value) {
    if (value == null || value.isEmpty) return 'required';
    return null;
  }
}
