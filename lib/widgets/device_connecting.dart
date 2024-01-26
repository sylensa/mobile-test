import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/device_list.dart';

class ConnectingDevice extends StatefulWidget {
  const ConnectingDevice({Key? key}) : super(key: key);

  @override
  State<ConnectingDevice> createState() => _ConnectingDeviceState();
}

class _ConnectingDeviceState extends State<ConnectingDevice> {
  int currentStep = 0;
  List<CustomDeviceModel> listCustomDeviceModel = [
    CustomDeviceModel(name: "Checking your device status",type: "checking",color: Colors.green),
    CustomDeviceModel(name: "Connecting device to the fame",type: "connecting",color: Colors.red),
    CustomDeviceModel(name: "Getting your device topology ....",type: "getting",color: Colors.yellow),
    CustomDeviceModel(name: "Validating your device",type: "validating",color: Colors.yellow),
    CustomDeviceModel(name: "Eco device successfully connected",type: "connected",color: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: UiHelper().appText("Add Device",color: Colors.black,weight: FontWeight.w500,size: 20),
        elevation: 1,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper().appText("Which source would you like to add?",size: 20,weight: FontWeight.w500),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(listCustomDeviceModel.length, (index) =>
                        Row(
                          children: [
                            EachStep(
                              index: index + 1,
                              currentStep:currentStep,
                              backgroundColor:Colors.green,
                              borderColor: Colors.black,
                              foregroundColor: Colors.white,
                              showDivider:index < 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
                              child: UiHelper().appText(listCustomDeviceModel[index].name,weight: FontWeight.w500),
                            ),

                          ],
                        ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  UiHelper().appText("Close",color: Colors.white,weight: FontWeight.w500,align: TextAlign.center)
                ),
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}

class EachStep extends StatelessWidget {
  final Color borderColor, foregroundColor;
  final Color  backgroundColor;
  final int index;
  final int currentStep;
  final bool showDivider;
  const EachStep(
      {
        required this.index,
        required this.currentStep,
        required this.backgroundColor,
        required this.borderColor,
        required this.foregroundColor,
        this.showDivider = true,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        index == 1 ?
        Container(
          height: 30,
          width: 30,
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: backgroundColor,
           color: backgroundColor,
            shape: BoxShape.circle,
            // border: Border.all(color: borderColor, width: 1),
          ),
          child:

          Icon(Icons.check,color: foregroundColor,size: 20,)

        ) :
        index == 2 ?
        Container(
            height: 30,
            width: 30,
            // padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: backgroundColor,
              color: backgroundColor,
              shape: BoxShape.circle,
              // border: Border.all(color: borderColor, width: 1),
            ),
            child:

            Icon(Icons.check,color: foregroundColor,size: 20,)

        ) :
        index == 3 ?
        Container(
            height: 30,
            width: 30,
            // padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: backgroundColor,
              color: primaryColor,
              shape: BoxShape.circle,
              // border: Border.all(color: borderColor, width: 1),
            ),
        ) :
        Container(
          height: 30,
          width: 30,
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: backgroundColor,
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blueGrey, width: 2),
          ),
        ),

        Container(
          color: showDivider ? Colors.green : Colors.transparent,
          width: 2,
          height: 20,
        )
      ],
    );
  }
}