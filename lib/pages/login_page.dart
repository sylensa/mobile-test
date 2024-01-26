import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';

import '../controllers/login_controller.dart';
import '../themes/colors.dart';
import '../themes/themes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            UiHelper().appTextTranslation('welcomeBack',context: context,  size: 18, color: Colors.black, weight: FontWeight.w300),
                            Row(
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
                            const SizedBox(height: 40),
                            SvgPicture.asset(Images.loginImage),
                            const SizedBox(height: 24),
                            const LoginForm(),
                          ],
                        ),
                ),
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

final loginFormKey = GlobalKey<FormState>();

class LoginForm extends HookConsumerWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNameController = useTextEditingController();
    final passwordController = useTextEditingController();//User14356, Avi223344, Usercomp001

    final state = ref.watch(loginControllerProvider);
    final notifier = ref.read(loginControllerProvider.notifier);
    ref.listen(loginControllerProvider.select((value) => value.error),
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
      // if (next) context.go(Routing.homePage);
      if (next) ref.read(isLoggedInProvider.notifier).state = true;
    });
    return Form(
      key: loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiHelper().appTextTranslation('username',context: context,  size: 16, color: Color(0xFF7E7F8A), weight: FontWeight.w400),

          const SizedBox(height: 4),
          TextFormField(
              validator: usernameValidator,
              controller: userNameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            // decoration: InputDecoration(
            //   suffixIcon: Icon( Icons.keyboard_arrow_down,size: 30,),
            // ),
          ),
          const SizedBox(height: 24),
           UiHelper().appTextTranslation('password',context: context,  size: 16, color: Color(0xFF7E7F8A), weight: FontWeight.w400),
          const SizedBox(height: 4),
          TextFormField(
            validator: passwordValidator,
            controller: passwordController,
            textInputAction: TextInputAction.done,
            obscureText: !state.isPasswordVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () => notifier.togglePasswordVisibility(),
                  icon: Icon(state.isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined)),
            ),
          ),

          TextButton(onPressed: () {
            context.go(Routing.phoneVerificationPage);
          }, child: const Text('Forgot password')),
          const SizedBox(height: 24),
          Center(
            child: InkWell(
              onTap: state.loading
                  ? null
                  : () {
                final valid = loginFormKey.currentState!.validate();
                if (valid) {
                  notifier.tryLogin(userNameController.text,
                      passwordController.text);
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
                    ? Stack(
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
                    : Center(child: const Text('Login',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
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

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return 'required';
    return null;
  }
}
