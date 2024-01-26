import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/add_device_controller.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/device_connecting.dart';

import '../states/add_device_state.dart';

class AddDevices extends ConsumerStatefulWidget {
  const AddDevices({Key? key}) : super(key: key);

  @override
  ConsumerState<AddDevices> createState() => _AddDevicesState();
}

class _AddDevicesState extends ConsumerState<AddDevices> {
  String deviceType = '';
  bool scanSelected = false;
  TextEditingController serialNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final AddDeviceState state = ref.watch(addDeviceNotifierProvider);
    // todo: use the states of adding a device like bellow commented code
    // state.loading; // eg: you can show a loading indicator in the Connect button.
    // state.error;
    // state.success;
    ref.listen(addDeviceNotifierProvider.select((value) => value.error),
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

    final notifier = ref.watch(addDeviceNotifierProvider.notifier);

    ref.listen(addDeviceNotifierProvider.select((value) => value.success),
        (previous, next) {
      if (next) {
        UiHelper().showSuccessToast(context,"deviceAddedSuccessfully".tr(context));
        Navigator.pop(context);
        //todo: device added successfully, do what you need here like go back to devices list or show a success message.
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryFadeColor,
        centerTitle:  false,
        titleSpacing: 10,
        leadingWidth: 30,
        leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios)),
        title: UiHelper().appTextTranslation("DeviceManagement.addDevice",context: context, color: Colors.black, weight: FontWeight.w500, size: 20), elevation: 1,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  UiHelper().appTextTranslation("AddDevice.title",context: context),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            deviceType = 'plc';
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  color: deviceType == 'plc' ? primaryColor :Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: UiHelper().appShadow(Colors.grey[200]!, 4, 4, 4)),
                              child: SvgPicture.asset(
                                Images.plc,
                                color: deviceType == 'plc' ? Colors.white :primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UiHelper().appTextTranslation("AddDevice.plc", size: 12,context: context),
                            UiHelper().appText("", size: 12),
                            UiHelper().appText("", size: 12),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            deviceType = 'rlink';
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  color:deviceType == 'rlink' ? primaryColor :Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: UiHelper()
                                      .appShadow(Colors.grey[200]!, 4, 4, 4)),
                              child: SvgPicture.asset(
                                Images.rlink,
                                color: deviceType == 'rlink' ? Colors.white :primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UiHelper().appTextTranslation("AddDevice.rlink", size: 12,context: context),
                            UiHelper().appText("", size: 12),
                            UiHelper().appText("", size: 12),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            deviceType = 'eco';
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  color: deviceType == 'eco' ? primaryColor :Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: UiHelper()
                                      .appShadow(Colors.grey[200]!, 4, 4, 4)),
                              child: SvgPicture.asset(
                                Images.eco,
                                color: deviceType == 'eco' ? Colors.white :primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UiHelper().appTextTranslation("AddDevice.eco",context: context, size: 12),
                            UiHelper().appText("", size: 12),
                            UiHelper().appText("", size: 12),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            deviceType = 'davis';
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 13),
                              decoration: BoxDecoration(
                                  color: deviceType == 'davis' ? primaryColor :Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: UiHelper()
                                      .appShadow(Colors.grey[200]!, 4, 4, 4)),
                              child: SvgPicture.asset(
                                Images.weather2,
                                color: deviceType == 'davis' ? Colors.white :primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                                child: UiHelper().appTextTranslation("AddDevice.davisWeatherStation",context: context, size: 12,align: TextAlign.center)
                            ),
                            // UiHelper().appText("Weather", size: 12),
                            // UiHelper().appText("Station", size: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  if(deviceType.isNotEmpty)
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     deviceType == 'plc' ?
                     UiHelper().appTextTranslation("AddDevice.plc.title",context: context):
                     deviceType == 'rlink' ?
                     UiHelper().appTextTranslation("AddDevice.rlink.title",context: context) :
                     deviceType == 'eco' ?
                     UiHelper().appTextTranslation("AddDevice.eco.title",context: context) :
                         SizedBox.shrink(),
                     const SizedBox(
                       height: 20,
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     UiHelper().appTextTranslation(deviceType != 'davis' ? "AddDevice.enterSerialNumber" : "AddDevice.enterDevice",context: context),
                     const SizedBox(
                       height: 10,
                     ),

                     Row(
                       children: [
                         Expanded(
                           child: SizedBox(
                             height: 50,
                             child: Center(
                               child: TextField(
                                 controller: serialNumber,
                                 onChanged: (value){
                                   setState(() {
                                     print(value);
                                   });
                                 },
                                 decoration: UiHelper().textFieldInputDecoration(
                                   padding: const EdgeInsets.symmetric(
                                       vertical: 10, horizontal: 10),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         if(deviceType != 'davis')
                         SizedBox(width: 10,),
                         if(deviceType != 'davis')
                         GestureDetector(
                           onTap: ()async{
                             setState(() {
                               scanSelected = !scanSelected;
                             });
                             String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                                 "#0973E7",
                                 "Cancel",
                                 true,
                                 ScanMode.QR);
                             setState(() {
                               serialNumber.text = "$barcodeScanRes";
                             });
                             print("barcodeScanRes:${barcodeScanRes}");
                           },
                           child: Container(
                             height: 50,
                             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: primaryColor),
                               color: scanSelected ? primaryColor : Colors.white
                             ),
                             child: Row(
                               children: [
                                 SvgPicture.asset(Images.barcode,color: scanSelected ? Colors.white : primaryColor,),
                                 // SizedBox(width: 10,),
                                 // Column(
                                 //   crossAxisAlignment: CrossAxisAlignment.start,
                                 //   children: [
                                 //     UiHelper().appText("Scan",color: scanSelected ? Colors.white : primaryColor,weight: FontWeight.w500),
                                 //     UiHelper().appText("Serial",color:scanSelected ? Colors.white : primaryColor,weight: FontWeight.w500),
                                 //   ],
                                 // )
                               ],
                             ),
                           ),
                         )
                       ],
                     )
                   ],
                 ),
                  if(deviceType == 'davis')
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20,),
                     UiHelper().appTextTranslation("AddDevice.enterPassword",context: context),
                     const SizedBox(
                       height: 10,
                     ),

                     SizedBox(
                       height: 50,
                       child: Center(
                         child: TextField(
                           controller: password,
                           decoration: UiHelper().textFieldInputDecoration(
                             padding: const EdgeInsets.symmetric(
                                 vertical: 10, horizontal: 10),
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
                  // SizedBox(height: 20,),
                  // if(scanSelected)
                  // GestureDetector(
                  //   onTap: ()async{
                  //     String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                  //         "#0973E7",
                  //         "Cancel",
                  //         true,
                  //         ScanMode.QR);
                  //         setState(() {
                  //           serialNumber.text = "$barcodeScanRes";
                  //         });
                  //     print("barcodeScanRes:${barcodeScanRes}");
                  //   },
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(5),
                  //         boxShadow: UiHelper().appShadow(Colors.grey[200]!, 4, 4, 4)
                  //     ),
                  //     child: SvgPicture.asset(Images.barcode,width: 174,height: 174,),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 5),
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:  deviceType.isNotEmpty  && serialNumber.text.isNotEmpty ? primaryColor : Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                    ),
                    child:  UiHelper().appTextTranslation("cancel",context: context,color: deviceType.isNotEmpty  && serialNumber.text.isNotEmpty ? primaryColor : Colors.grey,weight: FontWeight.w500,align: TextAlign.center)
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap:state.loading
                    ? null : () async{
                    //todo: to call add device api for RLink for example uncomment the code below
                    // notifier.addRLinkDevice(deviceId: 'the device id');
                    if(serialNumber.text.isNotEmpty){
                      if(deviceType == 'plc'){
                        await notifier.addControllerPlcDevice(deviceId: serialNumber.text);
                      }else if(deviceType == 'rlink'){
                        await notifier.addRLinkDevice(deviceId: serialNumber.text);
                      }else if(deviceType == 'eco'){
                        await notifier.addECODevice(deviceId: serialNumber.text);
                      }else if(deviceType == 'davis'){
                        if(password.text.isNotEmpty){
                          await notifier.addDavisDevice(deviceId: serialNumber.text,password: password.text);
                        }else{
                          UiHelper().toastMessage("Enter password",color: Colors.red);
                        }
                      }
                    }else{
                      UiHelper().toastMessage("Enter serial number",color: Colors.red);
                    }
                    // UiHelper.goTo(context, const ConnectingDevice());
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                      width: 120,
                      decoration: BoxDecoration(
                        color: deviceType.isNotEmpty && serialNumber.text.isNotEmpty  ? primaryColor : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: state.loading
                          ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          )) : UiHelper().appTextTranslation("connect",context: context,color: Colors.white,weight: FontWeight.w500,align: TextAlign.center)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
