import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/models/alarm.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/drawer_list_tile.dart';

import '../controllers/alarms_controller.dart';

class AlertPage extends ConsumerWidget {
  final List<Alarm> alarms;

  AlertPage({Key? key, required this.alarms}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = Get.put(HomePageState());
    final notifier = ref.read(alarmsNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        leadingWidth: 30,
        leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {
              state.showAlert.value = !state.showAlert.value;
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // SvgPicture.asset(Images.irrigationBlocks),
              // SizedBox(width: 10,),
              UiHelper().appTextTranslation("alerts",context: context,
                  color: Colors.black, weight: FontWeight.w500, size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              if (alarms.isNotEmpty)
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    for (int index = 0; index < alarms.length; index++)
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(3),
                                              child: SvgPicture.asset(
                                                Images.sensor,
                                                color: Colors.white,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: alarms[index]
                                                              .severity
                                                              .toLowerCase() ==
                                                          "normal"
                                                      ? Colors.orange
                                                      : Colors.deepOrange,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            UiHelper().appText(
                                                "${alarms[index].alarmType}",
                                                color: alarms[index]
                                                            .severity
                                                            .toLowerCase() ==
                                                        "normal"
                                                    ? Colors.orange
                                                    : Colors.deepOrange),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (alarms[index]
                                                        .source!
                                                        .isNotEmpty ||
                                                    alarms[index]
                                                        .alertedDeviceName!
                                                        .isNotEmpty ||
                                                    alarms[index].shiftId !=
                                                        null)
                                                  Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30),
                                                      child: Row(
                                                        children: [
                                                          if (alarms[index]
                                                              .source!
                                                              .isNotEmpty)
                                                            UiHelper().appText(
                                                                "${alarms[index].source}/",
                                                                color:
                                                                    Colors.grey[
                                                                        600]!),
                                                          if (alarms[index]
                                                              .alertedDeviceName!
                                                              .isNotEmpty)
                                                            UiHelper().appText(
                                                                "${alarms[index].alertedDeviceName}/",
                                                                color:
                                                                    Colors.grey[
                                                                        600]!),
                                                          if (alarms[index]
                                                                  .shiftId !=
                                                              null)
                                                            UiHelper().appText(
                                                                "${alarms[index].shiftId != null ? "shift ${alarms[index].shiftId}" : ""}",
                                                                color:
                                                                    Colors.grey[
                                                                        600]!),
                                                        ],
                                                      )),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Row(
                                                    children: [
                                                      UiHelper().appText(
                                                          "${UiHelper().getOutDays(DateTime.parse("${alarms[index].createdTimestamp}"))}",
                                                          color: Colors.black,
                                                          weight:
                                                              FontWeight.w500),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      UiHelper().appText(
                                                          "${DateFormat.jms().format(DateTime.parse("${alarms[index].createdTimestamp}"))}",
                                                          color:
                                                              Colors.grey[600]!,
                                                          weight: FontWeight
                                                              .normal),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(child: Container()),
                                            InkWell(
                                                onTap: () {
                                                  notifier.dismissAlarm(
                                                      alarms[index].id);
                                                },
                                                child: const Icon(Icons.close))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            notifier.dismissAllAlarms();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor)),
                            child: UiHelper()
                                .appTextTranslation("dismissAll",context: context, color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    )
                  ],
                )
              else
                Container(
                    height: 200,
                    color: primaryFadeColor,
                    child: Center(
                      child:
                          UiHelper().appTextTranslation("noAlerts",context: context, color: Colors.black),
                    )),

              // alarms.isNotEmpty ?
              // Expanded(
              //   child: ListView.builder(
              //     padding: EdgeInsets.zero,
              //     itemCount: alarms.length,
              //       itemBuilder: (BuildContext context, int index){
              //         return Column(
              //           children: [
              //             GestureDetector(
              //               onTap: () {
              //               },
              //               child: Card(
              //                 margin: EdgeInsets.zero,
              //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              //                 elevation: 0,
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Container(
              //                       padding: const EdgeInsets.all(10),
              //                       child: Column(
              //                         crossAxisAlignment: CrossAxisAlignment.start,
              //                         children: [
              //                           Row(
              //                             children: [
              //                               Container(
              //                                 padding: EdgeInsets.all(3),
              //                                 child: SvgPicture.asset(Images.sensor,color: Colors.white,),
              //                                 decoration: BoxDecoration(
              //                                     color:alarms[index].severity.toLowerCase() == "normal" ?  Colors.orange : Colors.deepOrange ,
              //                                     shape: BoxShape.circle
              //                                 ),
              //                               ),
              //                               SizedBox(width: 10,),
              //                               UiHelper().appText("${alarms[index].alarmType}",color: alarms[index].severity.toLowerCase() == "normal" ?  Colors.orange : Colors.deepOrange),
              //                             ],
              //                           ),
              //                           Container(
              //                               width: 230,
              //                               padding: EdgeInsets.only(left: 30),
              //                               child: Row(
              //                                 children: [
              //                                   if(alarms[index].source!.isNotEmpty)
              //                                     UiHelper().appText("${alarms[index].source}/",color: Colors.grey[600]!),
              //                                   if(alarms[index].alertedDeviceName!.isNotEmpty)
              //                                     UiHelper().appText("${alarms[index].alertedDeviceName}/}",color: Colors.grey[600]!),
              //                                   if(alarms[index].shiftId != null)
              //                                     UiHelper().appText("${alarms[index].shiftId != null ? "shift ${alarms[index].shiftId}" : ""}",color: Colors.grey[600]!),
              //                                 ],
              //                               )
              //                           ),
              //                           Container(
              //                             width: 230,
              //                             padding: EdgeInsets.only(left: 30),
              //                             child: Row(
              //                               children: [
              //                                 UiHelper().appText("${UiHelper().getOutDays(DateTime.parse("${alarms[index].createdTimestamp}"))}",color: Colors.black,weight: FontWeight.w500),
              //                                 SizedBox(width: 10,),
              //                                 UiHelper().appText("${DateFormat.jms().format(DateTime.parse("${alarms[index].createdTimestamp}"))}",color: Colors.grey[600]!,weight: FontWeight.normal),
              //                                 Expanded(child: Container()),
              //                                 // UiHelper().appText("Dismiss",color: Colors.black,weight: FontWeight.w400),
              //                                 // SizedBox(width: 10,),
              //                                 // SvgPicture.asset(Images.delete)
              //
              //                               ],
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                     Divider(color: Colors.grey,)
              //
              //
              //                   ],
              //                 ),
              //
              //               ),
              //             ),
              //             SizedBox(height: 10,)
              //           ],
              //         );
              //       }),
              // ) : Container(height:200,color: primaryFadeColor,child: Center(child: UiHelper().appText("No alerts",color: Colors.black),)),
            ],
          ),
          // alarms.isNotEmpty ?
          // Expanded(
          //   child: ListView.builder(
          //     padding: EdgeInsets.zero,
          //     itemCount: alarms.length,
          //       itemBuilder: (BuildContext context, int index){
          //         return Column(
          //           children: [
          //             GestureDetector(
          //               onTap: () {
          //               },
          //               child: Card(
          //                 margin: EdgeInsets.zero,
          //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //                 elevation: 0,
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Container(
          //                       padding: const EdgeInsets.all(10),
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Row(
          //                             children: [
          //                               Container(
          //                                 padding: EdgeInsets.all(3),
          //                                 child: SvgPicture.asset(Images.sensor,color: Colors.white,),
          //                                 decoration: BoxDecoration(
          //                                     color:alarms[index].severity.toLowerCase() == "normal" ?  Colors.orange : Colors.deepOrange ,
          //                                     shape: BoxShape.circle
          //                                 ),
          //                               ),
          //                               SizedBox(width: 10,),
          //                               UiHelper().appText("${alarms[index].alarmType}",color: alarms[index].severity.toLowerCase() == "normal" ?  Colors.orange : Colors.deepOrange),
          //                             ],
          //                           ),
          //                           Container(
          //                               width: 230,
          //                               padding: EdgeInsets.only(left: 30),
          //                               child: Row(
          //                                 children: [
          //                                   if(alarms[index].source!.isNotEmpty)
          //                                     UiHelper().appText("${alarms[index].source}/",color: Colors.grey[600]!),
          //                                   if(alarms[index].alertedDeviceName!.isNotEmpty)
          //                                     UiHelper().appText("${alarms[index].alertedDeviceName}/}",color: Colors.grey[600]!),
          //                                   if(alarms[index].shiftId != null)
          //                                     UiHelper().appText("${alarms[index].shiftId != null ? "shift ${alarms[index].shiftId}" : ""}",color: Colors.grey[600]!),
          //                                 ],
          //                               )
          //                           ),
          //                           Container(
          //                             width: 230,
          //                             padding: EdgeInsets.only(left: 30),
          //                             child: Row(
          //                               children: [
          //                                 UiHelper().appText("${UiHelper().getOutDays(DateTime.parse("${alarms[index].createdTimestamp}"))}",color: Colors.black,weight: FontWeight.w500),
          //                                 SizedBox(width: 10,),
          //                                 UiHelper().appText("${DateFormat.jms().format(DateTime.parse("${alarms[index].createdTimestamp}"))}",color: Colors.grey[600]!,weight: FontWeight.normal),
          //                                 Expanded(child: Container()),
          //                                 // UiHelper().appText("Dismiss",color: Colors.black,weight: FontWeight.w400),
          //                                 // SizedBox(width: 10,),
          //                                 // SvgPicture.asset(Images.delete)
          //
          //                               ],
          //                             ),
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                     Divider(color: Colors.grey,)
          //
          //
          //                   ],
          //                 ),
          //
          //               ),
          //             ),
          //             SizedBox(height: 10,)
          //           ],
          //         );
          //       }),
          // ) : Container(height:200,color: primaryFadeColor,child: Center(child: UiHelper().appText("No alerts",color: Colors.black),)),
        ),
      ),
    );
  }
}

class ShowAlertPage extends ConsumerWidget {
  const ShowAlertPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alarmsState = ref.watch(alarmsNotifierProvider);
    return alarmsState.when(
      data: (data) {
        //todo: show forecast table
        return AlertPage(
          alarms: data,
        );
      },
      error: (error, stackTrace) {
        final noAlarmsError = error is DioError &&
            error.response?.statusCode == 404;
        return Container(
            height: 170,
            color: Colors.white,
            child: Center(child: Text(noAlarmsError?'No Alarms':error.toString())));
      },
      loading: () {
        return Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: UiHelper().appShadow(Colors.white24, 4, 4, 4),
            ),
            child: const Center(
                child: CircularProgressIndicator(
              color: primaryColor,
            )));
      },
    );
  }
}
