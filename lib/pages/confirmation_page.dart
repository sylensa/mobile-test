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

class ConfirmationPage extends ConsumerWidget {
  const ConfirmationPage({
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
                  child: ConfirmationForm(),
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

class ConfirmationForm extends HookConsumerWidget {
  const ConfirmationForm({
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: UiHelper().appTextTranslation('passwordSuccessfullyUpdated',context: context,
                size: 18,
                color: Colors.black,
                weight: FontWeight.normal,
                lHeight: 2,
                align: TextAlign.center,
                family: 'Roboto'),
          ),
          Center(child: SvgPicture.asset("assets/icons/check.svg")),


          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: UiHelper().appTextTranslation('toContinue',context: context,
                    size: 18,
                    color: Colors.black,
                    weight: FontWeight.normal,
                    lHeight: 2,
                    align: TextAlign.left,
                    family: 'Roboto'),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: state.loading
                        ? null
                        : () {
                          context.go(Routing.loginPage);
                    },
                    child: Container(
                      width: UiHelper().appWidth(context) * 0.8,
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
                          : Center(child: Text('login'.tr(context),textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ],
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
