import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as GetX;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/account_widget.dart';
import 'package:netafim_mobile/widgets/device_list.dart';
import 'package:netafim_mobile/widgets/drawer_list_tile.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

import '../widgets/password_widget.dart';
import '../widgets/system_widget.dart';

class UserSettingsPage extends ConsumerStatefulWidget {
  const UserSettingsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UserSettingsPage> createState() => _UserSettingsPageState();
}

class _UserSettingsPageState extends ConsumerState<UserSettingsPage> {
  List<CustomDeviceModel> userSettingsList = [
    CustomDeviceModel(
        name: "UserSetting.account",
        color: Colors.grey,
        backgroundColor: Colors.grey[50]!,
        expand: false),
    CustomDeviceModel(
        name: "UserSetting.password",
        color: Colors.grey,
        backgroundColor: Colors.grey[50]!,
        expand: false),
    CustomDeviceModel(
        name: "UserSetting.system",
        color: Colors.grey,
        backgroundColor: Colors.grey[50]!,
        expand: false),
  ];

  @override
  Widget build(BuildContext context) {
    final state = GetX.Get.put(HomePageState());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryFadeColor,
        titleSpacing: 0,
        centerTitle: false,
        leadingWidth: 30,
        leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // SvgPicture.asset(Images.userSettings),

              UiHelper().appTextTranslation("UserSettings",context: context,
                  color: Colors.black, weight: FontWeight.w500, size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: GestureDetector(
        onTap: () {
          state.showWeather.value = false;
          state.showMenuList.value = false;
          state.showAlert.value = false;
        },
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                  physics: ClampingScrollPhysics(),
                  itemCount: userSettingsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          if (userSettingsList[index].expand) {
                            userSettingsList[index].expand = false;
                            userSettingsList[index].color = Colors.grey;
                            userSettingsList[index].backgroundColor =
                                Colors.grey[100]!;
                          } else {
                            userSettingsList[index].expand = true;
                            userSettingsList[index].color = primaryColor;
                            userSettingsList[index].backgroundColor =
                                Colors.blue[50]!;
                          }
                          state.showWeather.value = false;
                          state.showMenuList.value = false;
                          state.showAlert.value = false;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 3,
                                ),
                                UiHelper().appTextTranslation(userSettingsList[index].name, weight: FontWeight.w400, size: 18, context: context),
                                Expanded(child: Container()),
                                Icon(
                                  userSettingsList[index].expand
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          if (userSettingsList[index].expand)
                            ref.watch(userSettingsPageProvider(index)),
                          // if (index != 2)
                            Container(
                              color: Colors.grey[400],
                              width: UiHelper().appWidth(context),
                              height: 1,
                            ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

final userSettingsPageProvider =
    Provider.autoDispose.family<Widget, int>((ref, index) {
  final user = ref.watch(userInfoProvider);
  if (user == null) return Container();
  if (index == 0) {
    return const AccountPage();
  } else if (index == 1) {
    return const PasswordResetPage();
  } else {
    return const SystemPage();
  }
});
