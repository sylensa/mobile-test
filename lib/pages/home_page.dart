import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as GetX;
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/alarms_controller.dart';
import 'package:netafim_mobile/controllers/login_controller.dart';
import 'package:netafim_mobile/pages/alert_page.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/widgets/device_list.dart';
import 'package:netafim_mobile/widgets/drawer_list_tile.dart';
import 'package:netafim_mobile/widgets/farms_list_view.dart';
import 'package:netafim_mobile/widgets/menu_list.dart';
import 'package:netafim_mobile/widgets/weather_list.dart';
import 'package:netafim_mobile/routes.dart';

import '../themes/images.dart';
import '../widgets/current_weather_widget.dart';

class HomePageState {
  final GetX.Rx<bool> showWeather = GetX.Rx<bool>(false);
  final GetX.Rx<bool> showMenuList = GetX.Rx<bool>(false);
  final GetX.Rx<bool> showAlert = GetX.Rx<bool>(false);
  final GetX.Rx<bool> selectedType = GetX.Rx<bool>(true);
  final GetX.Rx<bool> dropDownState = GetX.Rx<bool>(false);
  final GetX.Rx<int?> selectedIndex = GetX.Rx<int?>(null);
  final GetX.Rx<String> searchText = GetX.Rx<String>("");
}

class HomePage extends ConsumerWidget {
  const HomePage({
    Key? key,
    required this.childPage,
  }) : super(key: key);
  final Widget childPage;



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final alarmsCount = ref.watch(alarmsCountProvider);
    final notifier = ref.watch(alarmsCountProvider);

    final state = GetX.Get.put(HomePageState());
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 58,
          centerTitle:  false,
          leadingWidth: 25,
          title: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Obx(() =>  Row(
                 children: [
                   InkWell(
                       onTap: () {
                         // Scaffold.of(context).openDrawer();
                         if( state.showWeather.value || state.showAlert.value){
                           state.showWeather.value = false;
                           state.showAlert.value = false;
                           state.showMenuList.value = !state.showMenuList.value;
                         }else{
                           state.showMenuList.value = !state.showMenuList.value;

                         }
                       },
                       child: Icon(Icons.menu_rounded,color:  state.showMenuList.value ? primaryColor : Colors.black,)),
                   SizedBox(width: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       Container(
                           width: 25,
                           height: 25,
                           decoration:  const BoxDecoration(
                             color: Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12,
                                 spreadRadius: 1,
                                 blurRadius: 3,
                                 offset: Offset(0, 2),
                               ),
                             ],
                             shape: BoxShape.circle,
                           ),
                           child:
                           SvgPicture.asset(
                             Images.loginImage,
                           )
                       ),
                       SizedBox(width: 5,),
                       const Text(
                         'Grow',
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             fontSize: 20,
                             color: darkBlueTextColor),
                       ),
                       const Text(
                         'Sphere',
                         style: TextStyle(
                             fontWeight: FontWeight.w300,
                             fontSize: 20,
                             color: darkBlueTextColor),
                       ),
                       Container(
                           margin: EdgeInsets.only(bottom: 15),
                           child: UiHelper().appText("TM",color: darkBlueTextColor,size: 8,weight: FontWeight.w500 )
                       ),
                     ],
                   ),
                 ],
               ),),


               Row(
                 children: [
                   GestureDetector(
                       onTap: () {
                         if( state.showMenuList.value || state.showAlert.value){
                           state.showMenuList.value = false;
                           state.showAlert.value = false;
                           state.showWeather.value = !state.showWeather.value;
                         }else{
                           state.showWeather.value = !state.showWeather.value;
                         }
                       },
                       child:Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                               margin: EdgeInsets.only(top: 0),
                               child: const CurrentWeatherWidget()),
                           // state.showWeather.value ?
                           //   Container(
                           //     padding: EdgeInsets.only(right: 50),
                           //     child: ClipPath(
                           //       clipper: TriangleClipper(),
                           //       child: Container(
                           //         color: Colors.grey[100],
                           //         height: 20,
                           //         width: 20,
                           //       ),
                           //     ),
                           //   ) :
                           // Container(
                           //   padding: EdgeInsets.only(right: 50),
                           //   child: ClipPath(
                           //     clipper: TriangleClipper(),
                           //     child: Container(
                           //       color: Colors.transparent,
                           //       height: 20,
                           //       width: 20,
                           //     ),
                           //   ),
                           // )
                         ],
                       )),

                   // if(notifier != 0)
                   Row(
                     children: [
                       SizedBox(width: 5,),
                       GestureDetector(
                         onTap: () {
                           if( state.showMenuList.value || state.showWeather.value){
                             state.showMenuList.value = false;
                             state.showWeather.value = false;
                             state.showAlert.value = !state.showAlert.value;
                           }else{
                             state.showAlert.value = !state.showAlert.value;
                           }
                         },
                         child:GetX.Obx(() =>  Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Stack(
                               children: [
                                 Container(
                                   padding: EdgeInsets.only(bottom:state.showAlert.value ? 12 : 0),
                                   margin: EdgeInsets.only(right: notifier != 0 ? 20 : 0,top:state.showAlert.value ? 20 : 0),
                                   child: SvgPicture.asset(
                                     Images.alerts,
                                     color: notifier != 0 ? Colors.red : Colors.black,
                                     width: 20,
                                     // width: 20,
                                   ),
                                 ),
                                 if(notifier != 0)
                                 Positioned(
                                   right: 0,
                                   bottom: state.showAlert.value ? 17 : 5,
                                   child: Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: UiHelper().appText("${notifier}",size: 10,align: TextAlign.center),
                                     decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(5),
                                         border: Border.all(color: Colors.yellow)
                                     ),
                                   ),
                                 )
                               ],
                             ),
                             if(state.showAlert.value)
                               Container(
                                 padding: EdgeInsets.only(right: 0,bottom: 0,top: 0),
                                 child: ClipPath(
                                   clipper: TriangleClipper(),
                                   child: Container(
                                     color: primaryFadeColor,
                                     height: 20,
                                     width: 20,
                                   ),
                                 ),
                               )
                           ],
                         )),
                       ),
                     ],
                   ),
                 ],
               )

                // SizedBox(width: 10,)
              ],
            ),
          ),
          titleSpacing: 0,
          elevation: 1,
          automaticallyImplyLeading: false,

        ),
        // drawer: Drawer(
        //   child: Builder(builder: (context) {
        //     return ListView(
        //       padding: EdgeInsets.zero,
        //       children: [
        //         const SizedBox(height: 56),
        //         DrawerListTile(
        //           title: 'GrowSphere Farm1',
        //           icon: Images.switchFarm,
        //           isSelected: ref.watch(isFarmsListVisible),
        //           onTap: () {
        //             selectedRoute = '';
        //             ref.read(isFarmsListVisible.notifier).state = !ref.read(isFarmsListVisible);
        //           },
        //           trailing: IconButton(
        //             onPressed: () {
        //               selectedRoute = Routing.userSettings;
        //               Navigator.pop(context);
        //               context.go(Routing.userSettings);
        //             },
        //             icon:  Icon(
        //               CupertinoIcons.person,
        //               color: UiHelper().getSelectedRoute(Routing.userSettings) ? primaryColor : Colors.black,
        //             ),
        //           ),
        //         ),
        //         if (ref.watch(isFarmsListVisible)) const FarmsListView(),
        //         if (!ref.watch(isFarmsListVisible)) drawerItemDivider,
        //         DrawerListTile(
        //             title: 'Work Space (Home)',
        //             isSelected:UiHelper().getSelectedRoute(Routing.homePage),
        //             icon: Images.workSpace,
        //             onTap: () {
        //               selectedRoute = Routing.homePage;
        //               Navigator.pop(context);
        //               context.go(Routing.homePage,);
        //             }),
        //         drawerItemDivider,
        //         DrawerListTile(
        //             title: 'Irrigation Blocks',
        //             icon: Images.irrigationBlocks,
        //             isSelected:UiHelper().getSelectedRoute(Routing.irrigationBlock),
        //             onTap: () {
        //               selectedRoute = Routing.irrigationBlock;
        //             }),
        //         drawerItemDivider,
        //         DrawerListTile(
        //             title: 'Device Management',
        //             icon: Images.deviceManagement,
        //             isSelected:UiHelper().getSelectedRoute(Routing.listDevicePage),
        //             onTap: () {
        //               selectedRoute = Routing.listDevicePage;
        //               Navigator.pop(context);
        //               context.go(Routing.listDevicePage,);
        //               // UiHelper().goTo(context, const ListManagementDevices());
        //             }),
        //         drawerItemDivider,
        //         DrawerListTile(
        //             title: 'Farm Management',
        //             icon: Images.farmManagement,
        //             isSelected:UiHelper().getSelectedRoute(Routing.farmManagement),
        //             onTap: () {
        //               selectedRoute = Routing.farmManagement;
        //             }),
        //         drawerItemDivider,
        //         DrawerListTile(
        //             title: 'Contact Us', icon: Images.contactUs, onTap: () {}),
        //         drawerItemDivider,
        //         DrawerListTile(
        //             title: 'About', icon: Images.about, onTap: () {}),
        //         drawerItemDivider,
        //       ],
        //     );
        //   }),
        // ),
        body: GestureDetector(
          onTap: (){
            state.showWeather.value = false;
            state.showMenuList.value = false;
            state.showAlert.value = false;

          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Stack(
              children: [
                childPage,
                GetX.Obx(() => state.showWeather.value ? const DailyForecastWidget() :  state.showMenuList.value ? const MenuList() : state.showAlert.value ? const ShowAlertPage() : Container()),
              ],
            ),
          ),
        ));
  }
}

final isFarmsListVisible = StateProvider<bool>((ref) => false);

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

