import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as GetX;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/drawer_list_tile.dart';
import 'package:netafim_mobile/widgets/farms_list_view.dart';

class MenuList extends ConsumerWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(selectedFarmProvider);
    final state = GetX.Get.put(HomePageState());

    return Container(
      color: primaryFadeColor,
      height:ref.watch(isFarmsListVisible) ? UiHelper().appHeight(context) :  530,
      child: Column(
        children: [
         Expanded(
       child: ListView(
        padding: EdgeInsets.zero,
        children: [
            const SizedBox(height: 0),
            Container(
              padding: EdgeInsets.only(top: 7,bottom: 0),
              decoration: BoxDecoration(
                  color:  ref.watch(isFarmsListVisible) ? Colors.white : primaryFadeColor,
                border: Border(
                  top: BorderSide(color: Colors.grey),
                )
              ),
              child: DrawerListTile(

                title: ref.watch(selectedFarmProvider)?.farmName??'Farms',
                icon: Images.loginImage,
                isProfile: true,
                isSelected: ref.watch(isFarmsListVisible),
                onTap: () {
                  selectedRoute = '';
                  ref.read(isFarmsListVisible.notifier).state = !ref.read(isFarmsListVisible);
                },
                trailing: InkWell(
                  onTap: () {
                    selectedRoute = '';
                    ref.read(isFarmsListVisible.notifier).state = !ref.read(isFarmsListVisible);
                    // selectedRoute = Routing.userSettings;
                    // state.showMenuList.value = false;
                    // state.showAlert.value = false;
                    // context.push(Routing.userSettings);
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(
                      ref.watch(isFarmsListVisible) ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30,
                      // color: UiHelper().getSelectedRoute(Routing.userSettings) ? primaryColor : Colors.black,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          if (!ref.watch(isFarmsListVisible)) drawerItemDivider,
            if (ref.watch(isFarmsListVisible)) const FarmsListView(),
            // if (!ref.watch(isFarmsListVisible)) drawerItemDivider,
            // if(!ref.watch(isFarmsListVisible) )
          Column(
            children: [
              DrawerListTile(
                  title: 'Menu.workSpace',
                  isSelected:UiHelper().getSelectedRoute(Routing.homePage),
                  icon: Images.workSpace,
                  onTap: () {
                    state.showMenuList.value = false;
                    state.showAlert.value = false;
                    selectedRoute = Routing.homePage;
                    context.push(Routing.homePage,);
                  }),
              // drawerItemDivider,
              DrawerListTile(
                  title: 'Menu.irrigationBlock',
                  icon: Images.irrigationBlocks,
                  isSelected:UiHelper().getSelectedRoute(Routing.irrigationBlock),
                  onTap: () {
                    state.showMenuList.value = false;
                    state.showAlert.value = false;
                    selectedRoute = Routing.irrigationBlock;
                    context.push(Routing.irrigationBlock,);
                  }),
              // drawerItemDivider,
              DrawerListTile(
                  title: 'Menu.deviceManagement',
                  icon: Images.deviceManagement,
                  isSelected:UiHelper().getSelectedRoute(Routing.listDevicePage),
                  onTap: () {
                    state.showMenuList.value = false;
                    state.showAlert.value = false;
                    selectedRoute = Routing.listDevicePage;
                    context.push(Routing.listDevicePage,);
                    // UiHelper().goTo(context, const ListManagementDevices());
                  }),
              // drawerItemDivider,
              DrawerListTile(
                  title: 'Menu.farmManagement',
                  icon: Images.farmManagement,
                  isSelected:UiHelper().getSelectedRoute(Routing.farmManagement),
                  onTap: () {
                    state.showMenuList.value = false;
                    state.showAlert.value = false;
                    selectedRoute = Routing.farmManagement;
                    context.push(Routing.farmManagement,);

                  }),
              drawerItemDivider,
              DrawerListTile(
                  title: 'UserSettings', icon: Images.userSettings,
                  isSelected:UiHelper().getSelectedRoute(Routing.userSettings),

                  onTap: () {
                    selectedRoute = Routing.userSettings;
                    state.showMenuList.value = false;
                    state.showAlert.value = false;
                    context.push(Routing.userSettings);
                    }),
              DrawerListTile(
                  title: 'Menu.contactUs', icon: Images.contactUs, onTap: () {
                   selectedRoute = Routing.loadWebView;
                    state.showMenuList.value = false;
                   state.showAlert.value = false;
                    context.push(Routing.loadWebView,extra: {
                      "url":"h",
                      "linkName":"Menu.contactUs"
                    },);

              }),
              // drawerItemDivider,
              DrawerListTile(
                  title: 'Menu.about', icon: Images.about, onTap: () {
                selectedRoute = Routing.loadWebView;
                state.showMenuList.value = false;
                state.showAlert.value = false;
                context.push(Routing.loadWebView,extra: {
                  "url":"",
                  "linkName":"Menu.about"
                },);
              }),
              drawerItemDivider,
            ],
          )
        ],
              ),
         )
        ],
      ),
    );
  }
}
