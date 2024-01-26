import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/controllers/recs_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/models/irrigation_program.dart';
import 'package:netafim_mobile/models/weekly_recs_response.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';


class WeeklyRecording extends ConsumerStatefulWidget {
  const WeeklyRecording({Key? key, required this.cropUnit}) : super(key: key);
  final String cropUnit;

  @override
  ConsumerState<WeeklyRecording> createState() => _WeeklyRecordingState();
}

class _WeeklyRecordingState extends ConsumerState<WeeklyRecording> {
  PageController pageController = PageController(initialPage: 0);

  List<Day> days = [];
  List<Week> weeks = [];
  int currentDayIndex = 0;
  int currentIndex = 0;
  int currentWeekIndex = 0;
  dynamic onChangeIndex = 0;
  bool refresh = true;
  bool isCurrentWeek = true;
  CarouselController controller = CarouselController();
  getCurrentDay(WeeklyRecsResponse cropUnits) {
    print("currentDayIndex:$currentDayIndex");

    int currentDate = int.parse(
        DateTime.now().toString().split(" ").first.replaceAll("-", ""));
    for (int i = 0; i < cropUnits.weeks.length; i++) {
      int startDate =
          int.parse(cropUnits.weeks[i].startDate.replaceAll("-", ""));
      int endDate = int.parse(cropUnits.weeks[i].endDate.replaceAll("-", ""));
      if (currentDate >= startDate && currentDate <= endDate) {
        currentWeekIndex = i;
        onChangeIndex = i;
        days.clear();
        for (int t = 0; t < cropUnits.days.length; t++) {
          int dateInSeason =
              int.parse(cropUnits.days[t].dateInSeason.replaceAll("-", ""));
          if (dateInSeason >= startDate && dateInSeason <= endDate) {
            print("object:${dateInSeason}");
            days.add(cropUnits.days[t]);
            for (int x = 0; x < days.length; x++) {
              if (currentDate ==
                  int.parse(days[x].dateInSeason.replaceAll("-", ""))) {
                currentIndex = x;
                print("currentIndex:${currentIndex}");
              }
            }
          }
        }
      }
    }
  }

  getDays(WeeklyRecsResponse cropUnits, bool remove)async {
    print("currentDayIndex1:$currentDayIndex");
    print("currentWeekIndex:$currentWeekIndex");
    if (remove) {
      if (currentDayIndex != 0) {
        currentDayIndex--;
      }
    } else {
      if (currentDayIndex < cropUnits.days.length) {
        currentDayIndex++;
      }
    }
    int currentDate = int.parse(DateTime(DateTime.now().year,
            DateTime.now().month, DateTime.now().day + currentDayIndex)
        .toString()
        .split(" ")
        .first
        .replaceAll("-", ""));
    int startDate = int.parse(
        cropUnits.weeks[currentWeekIndex].startDate.replaceAll("-", ""));
    int endDate = int.parse(
        cropUnits.weeks[currentWeekIndex].endDate.replaceAll("-", ""));
    print("currentWeekIndex:${currentWeekIndex}");
    if (currentDate >= startDate && currentDate <= endDate) {
      isCurrentWeek = true;
    } else {
      isCurrentWeek = false;
    }
    days.clear();
    for (int t = 0; t < cropUnits.days.length; t++) {
      int dateInSeason =
          int.parse(cropUnits.days[t].dateInSeason.replaceAll("-", ""));
      if (dateInSeason >= startDate && dateInSeason <= endDate) {
        days.add(cropUnits.days[t]);
        for (int x = 0; x < days.length; x++) {
          if (currentDate ==
              int.parse(days[x].dateInSeason.replaceAll("-", ""))) {
            currentDayIndex = x;
            print("currentDayIndex:${currentDayIndex}");
          }
        }
      }
    }

    // if(currentDate >= startDate && currentDate <= endDate ){
    //   for(int t = 0; t < cropUnits.days.length;t++){
    //     int dateInSeason = int.parse(cropUnits.days[t].dateInSeason.replaceAll("-", "") );
    //     if(dateInSeason >= startDate && dateInSeason <= endDate){
    //       print("object:${dateInSeason}");
    //       days.add(cropUnits.days[t]);
    //       for(int x = 0; x < days.length; x++){
    //         if(currentDate == int.parse(days[x].dateInSeason.replaceAll("-", "") )){
    //           currentDayIndex = x;
    //           print("currentDayIndex:${currentDayIndex}");
    //         }
    //       }
    //
    //     }
    //   }
    //   // return;
    // }
    // else{
    //   for(int t = 0; t < cropUnits.days.length;t++){
    //     int dateInSeason = int.parse(cropUnits.days[t].dateInSeason.replaceAll("-", "") );
    //     if(dateInSeason >= startDate && dateInSeason <= endDate){
    //       print("object:${dateInSeason}");
    //       days.add(cropUnits.days[t]);
    //       for(int x = 0; x < days.length; x++){
    //         if(currentDate == int.parse(days[x].dateInSeason.replaceAll("-", "") )){
    //           currentDayIndex = x;
    //           print("currentDayIndex:${currentDayIndex}");
    //         }
    //       }
    //
    //     }
    //   }
    // }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeeklyRecsIdentifier weeklyRecsIdentifier = WeeklyRecsIdentifier(
        cropUnitId: "CU_${widget.cropUnit}",
        date: DateTime.now().toString().split(" ").first);
    final weeklyRec = ref.watch(weeklyRecsProvider(weeklyRecsIdentifier));

    return Scaffold(
      body: Container(
        child: weeklyRec.when(
          data: (cropUnits) {
            if (cropUnits.days.isEmpty) {
              return Center(child: Text('noCropUnitFound'.tr(context)));
            }
            if (refresh) {
              getCurrentDay(cropUnits);
            }
            if (cropUnits.protocol!.seasonStatus!.toLowerCase() == "pending") {
              return Center(
                  child: UiHelper().appTextTranslation("noWeeklyRecordings",
                      context: context));

              Expanded(
                  child: Center(
                child: UiHelper().appText("No weekly recordings"),
              ));
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper().appText(
                      "${cropUnits.weeks[currentWeekIndex].startDate}",
                      weight: FontWeight.w500,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (currentWeekIndex != 0) {
                            currentWeekIndex--;
                            refresh = false;
                            getDays(cropUnits, true);
                          }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[400]!),
                            boxShadow: UiHelper()
                                .appShadow(Colors.grey[200]!, 4, 4, 4)),
                        child: SvgPicture.asset(
                          Images.backArrow,
                          color: currentWeekIndex == 0
                              ? Colors.grey
                              : primaryColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!isCurrentWeek) {
                          setState(() {
                            refresh = false;
                            isCurrentWeek = true;
                            getCurrentDay(cropUnits);
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey[400]!),
                            boxShadow: UiHelper()
                                .appShadow(Colors.grey[200]!, 4, 4, 4)),
                        child: UiHelper().appTextTranslation("today",
                            context: context,
                            color: isCurrentWeek ? Colors.grey : primaryColor,
                            weight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (currentWeekIndex < cropUnits.weeks.length - 1) {
                            currentWeekIndex++;
                            refresh = false;
                            getDays(cropUnits, false);
                          }
                          // else{
                          //   currentWeekIndex = 0;
                          //   getDays(cropUnits,false);
                          // }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[400]!),
                            boxShadow: UiHelper()
                                .appShadow(Colors.grey[200]!, 4, 4, 4)),
                        child: SvgPicture.asset(Images.forwardArrow,
                            color:
                                currentWeekIndex == cropUnits.weeks.length - 1
                                    ? Colors.grey
                                    : primaryColor),
                      ),
                    ),
                    UiHelper().appText(
                      "${cropUnits.weeks[currentWeekIndex].endDate}",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                // Divider(
                //   color: Colors.grey[400],
                //   thickness: 2,
                // ),
                const SizedBox(
                  height: 20,
                ),
                // Expanded(
                //   child: ListView.separated(
                //     physics: ClampingScrollPhysics(),
                //     padding: const EdgeInsets.symmetric(horizontal: 0),
                //     itemBuilder: (context, index) =>
                //         GestureDetector(
                //       onHorizontalDragEnd: (d) {
                //         print("object");
                //         print(d.primaryVelocity);
                //
                //         if (d.primaryVelocity! > 0) {
                //           Future.delayed(Duration(milliseconds: 150),(){
                //             setState(() {
                //               if (currentWeekIndex != 0) {
                //                 currentWeekIndex--;
                //                 refresh = false;
                //                 getDays(cropUnits, true);
                //               }
                //             });
                //           });
                //
                //         } else {
                //          Future.delayed(Duration(milliseconds: 150),(){
                //            setState(() {
                //              if (currentWeekIndex < cropUnits.weeks.length - 1) {
                //                currentWeekIndex++;
                //                refresh = false;
                //                getDays(cropUnits, false);
                //              }
                //              // else{
                //              //   currentWeekIndex = 0;
                //              //   getDays(cropUnits,false);
                //              // }
                //            });
                //          });
                //         }
                //       },
                //       child: Container(
                //         padding: const EdgeInsets.symmetric(horizontal: 0),
                //         margin: const EdgeInsets.symmetric(horizontal: 10),
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             boxShadow: UiHelper()
                //                 .appShadow(Colors.grey[200]!, 4, 4, 4),
                //             borderRadius: BorderRadius.circular(10),
                //             border: Border.all(
                //                 color: index == currentIndex &&
                //                         int.parse(DateTime.now()
                //                                 .toString()
                //                                 .split(" ")
                //                                 .first
                //                                 .replaceAll("-", "")) ==
                //                             int.parse(days[index]
                //                                 .dateInSeason
                //                                 .replaceAll("-", ""))
                //                     ? primaryColor
                //                     : Colors.grey[300]!,
                //                 width: 2)),
                //         child: Column(
                //           children: [
                //             Container(
                //               padding: const EdgeInsets.only(left: 10, top: 10),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   UiHelper().appText(
                //                       index == currentIndex &&
                //                               int.parse(DateTime.now().toString().split(" ").first.replaceAll("-", "")) ==
                //                                   int.parse(days[index]
                //                                       .dateInSeason
                //                                       .replaceAll("-", ""))
                //                           ? "Today"
                //                           : "${DateFormat(DateFormat.WEEKDAY).format(DateTime.parse(days[index].dateInSeason))}",
                //                       color: index == currentIndex &&
                //                               int.parse(DateTime.now()
                //                                       .toString()
                //                                       .split(" ")
                //                                       .first
                //                                       .replaceAll("-", "")) ==
                //                                   int.parse(
                //                                       days[index].dateInSeason.replaceAll("-", ""))
                //                           ? primaryColor
                //                           : Colors.grey,
                //                       weight: FontWeight.w500),
                //                   days[index].heatWaveAlert! ||
                //                           days[index].frostAlert!
                //                       ? Container(
                //                           padding: const EdgeInsets.symmetric(
                //                               horizontal: 20, vertical: 2),
                //                           margin: const EdgeInsets.symmetric(
                //                             horizontal: 10,
                //                           ),
                //                           decoration: BoxDecoration(
                //                             color: Colors.red,
                //                             borderRadius:
                //                                 BorderRadius.circular(5),
                //                           ),
                //                           child: Text.rich(TextSpan(
                //                               text: "excessive".tr(context),
                //                               style: TextStyle(
                //                                   color: Colors.white,
                //                                   fontWeight: FontWeight.w500),
                //                               children: [
                //                                 days[index].heatWaveAlert!
                //                                     ? TextSpan(
                //                                         text:
                //                                             "heat".tr(context))
                //                                     : days[index].frostAlert!
                //                                         ? TextSpan(
                //                                             text: "fros"
                //                                                 .tr(context))
                //                                         : TextSpan(text: "")
                //                               ])))
                //                       : const SizedBox.shrink()
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(
                //               height: 10,
                //             ),
                //             Container(
                //               padding: const EdgeInsets.symmetric(
                //                   horizontal: 10, vertical: 5),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Container(
                //                         padding: const EdgeInsets.all(5),
                //                         decoration: BoxDecoration(
                //                             color: days[index]
                //                                         .recommandationDepth !=
                //                                     0
                //                                 ? primaryColor
                //                                 : Colors.grey,
                //                             shape: BoxShape.circle),
                //                         child: SvgPicture.asset(
                //                           Images.irrigation,
                //                           width: 15,
                //                         ),
                //                       ),
                //                       const SizedBox(
                //                         width: 10,
                //                       ),
                //                       days[index].recommandationDepth != 0
                //                           ? Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                                 UiHelper().appText(
                //                                     "${days[index].recommandationDepth!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                //                                     color: primaryColor,
                //                                     weight: FontWeight.w600,
                //                                     size: 16),
                //                                 // SizedBox(height: 5,),
                //                               ],
                //                             )
                //                           : Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   "-",
                //                                   color: Colors.grey,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                               ],
                //                             )
                //                     ],
                //                   ),
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       UiHelper().appTextTranslation("total",
                //                           context: context,
                //                           color: index == currentIndex &&
                //                                   int.parse(DateTime.now()
                //                                           .toString()
                //                                           .split(" ")
                //                                           .first
                //                                           .replaceAll(
                //                                               "-", "")) ==
                //                                       int.parse(days[index]
                //                                           .dateInSeason
                //                                           .replaceAll("-", ""))
                //                               ? Colors.black
                //                               : Colors.grey,
                //                           weight: FontWeight.normal,
                //                           size: 18),
                //                       days[index].recommandationDepth != 0
                //                           ? Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 cropUnits.cropUnit
                //                                             .measurementMethod!
                //                                             .toLowerCase() ==
                //                                         "metric"
                //                                     ? Row(
                //                                         children: [
                //                                           UiHelper().appText(
                //                                             "${days[index].recommandationVolume!.toStringAsFixed(1)} m",
                //                                             color: Colors.black,
                //                                             weight:
                //                                                 FontWeight.w500,
                //                                           ),
                //                                           Container(
                //                                             margin:
                //                                                 EdgeInsets.only(
                //                                                     bottom: 10),
                //                                             child: UiHelper()
                //                                                 .appText(
                //                                               "3",
                //                                               color:
                //                                                   Colors.black,
                //                                               weight: FontWeight
                //                                                   .w500,
                //                                             ),
                //                                           ),
                //                                         ],
                //                                       )
                //                                     : UiHelper().appText(
                //                                         "${days[index].recommandationVolume!.toStringAsFixed(1)} gal",
                //                                         color: Colors.black,
                //                                         weight: FontWeight.w500,
                //                                       ),
                //                               ],
                //                             )
                //                           : Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   "-",
                //                                   color: Colors.grey,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                               ],
                //                             )
                //                     ],
                //                   ),
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       UiHelper().appTextTranslation("hr",
                //                           context: context,
                //                           color: index == currentIndex &&
                //                                   int.parse(DateTime.now()
                //                                           .toString()
                //                                           .split(" ")
                //                                           .first
                //                                           .replaceAll(
                //                                               "-", "")) ==
                //                                       int.parse(days[index]
                //                                           .dateInSeason
                //                                           .replaceAll("-", ""))
                //                               ? Colors.black
                //                               : Colors.grey,
                //                           weight: FontWeight.normal,
                //                           size: 20),
                //                       days[index].recommandationDepth != 0
                //                           ? Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   " ${days[index].recommandationTime}",
                //                                   color: Colors.black,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                               ],
                //                             )
                //                           : Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   "-",
                //                                   color: Colors.grey,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                               ],
                //                             )
                //                     ],
                //                   ),
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       SvgPicture.asset(
                //                         Images.weatherFall,
                //                         color: index == currentIndex &&
                //                                 int.parse(DateTime.now()
                //                                         .toString()
                //                                         .split(" ")
                //                                         .first
                //                                         .replaceAll("-", "")) ==
                //                                     int.parse(days[index]
                //                                         .dateInSeason
                //                                         .replaceAll("-", ""))
                //                             ? Colors.black
                //                             : Colors.grey,
                //                         width: 30,
                //                       ),
                //                       days[index].recommandationDepth != 0
                //                           ? Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   "${days[index].rain!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                //                                   color: Colors.black,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                               ],
                //                             )
                //                           : Column(
                //                               children: [
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 UiHelper().appText(
                //                                   "-",
                //                                   color: Colors.grey,
                //                                   weight: FontWeight.w500,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 5,
                //                                 ),
                //                               ],
                //                             )
                //                     ],
                //                   ),
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.center,
                //                     children: [
                //                       SvgPicture.asset(
                //                         Images.reading,
                //                         color: index == currentIndex &&
                //                                 int.parse(DateTime.now()
                //                                         .toString()
                //                                         .split(" ")
                //                                         .first
                //                                         .replaceAll("-", "")) ==
                //                                     int.parse(days[index]
                //                                         .dateInSeason
                //                                         .replaceAll("-", ""))
                //                             ? Colors.black
                //                             : Colors.grey,
                //                         width: 30,
                //                       ),
                //                       Column(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.center,
                //                         children: [
                //                           SizedBox(
                //                             height: 10,
                //                           ),
                //                           UiHelper().appText(
                //                             "${days[index].et!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                //                             color: Colors.black,
                //                             weight: FontWeight.w500,
                //                           ),
                //                           SizedBox(
                //                             height: 5,
                //                           ),
                //                         ],
                //                       )
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     separatorBuilder: (context, index) =>
                //         const SizedBox(height: 10),
                //     itemCount: days.length,
                //   ),
                // ),

                Expanded(

                    child: FlutterCarousel(
                      options: CarouselOptions(
                          height: UiHelper().appHeight(context),
                          carouselController:controller,
                          showIndicator: false,
                          enableInfiniteScroll: false,
                          viewportFraction: 1,
                          floatingIndicator: true,
                          initialPage: currentWeekIndex,
                          onScrolled: (value){
                            // print("value:$value");
                          },
                          onPageChanged: (index,change){
                            setState(() {

                           print("index:${index}");
                           print("currentWeekIndex currentWeekIndex:${currentWeekIndex}");
                           print("onChangeIndex:${onChangeIndex}");
                            });

                            // if(index == 0){
                            //   currentWeekIndex = index;
                            //   onChangeIndex = index;
                            //   refresh = false;
                            //   return;
                            // }
                            // if(index == 4){
                            //   currentWeekIndex = index;
                            //   onChangeIndex = index;
                            //   refresh = false;
                            //   return;
                            // }
                            setState(() {
                              if (index < onChangeIndex) {
                                currentWeekIndex--;
                                onChangeIndex = index;
                                refresh = false;
                                getDays(cropUnits, true);
                              }
                              else {
                                if (index > onChangeIndex) {
                                  currentWeekIndex++;
                                  onChangeIndex = index;
                                  refresh = false;
                                  getDays(cropUnits, false);
                                }
                              }
                            });

                          }
                      ),
                      items:  [
                        for(int i =0; i <  cropUnits.weeks.length; i++)
                        ListView.separated(
                          physics: ClampingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, index) =>
                              GestureDetector(
                                // onHorizontalDragEnd: (d) {
                                //   print("object");
                                //   print(d.primaryVelocity);
                                //
                                //   if (d.primaryVelocity! > 0) {
                                //     Future.delayed(Duration(milliseconds: 150),(){
                                //       setState(() {
                                //         if (currentWeekIndex != 0) {
                                //           currentWeekIndex--;
                                //           refresh = false;
                                //           getDays(cropUnits, true);
                                //         }
                                //       });
                                //     });
                                //
                                //   } else {
                                //     Future.delayed(Duration(milliseconds: 150),(){
                                //       setState(() {
                                //         if (currentWeekIndex < cropUnits.weeks.length - 1) {
                                //           currentWeekIndex++;
                                //           refresh = false;
                                //           getDays(cropUnits, false);
                                //         }
                                //         // else{
                                //         //   currentWeekIndex = 0;
                                //         //   getDays(cropUnits,false);
                                //         // }
                                //       });
                                //     });
                                //   }
                                // },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0),
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: UiHelper()
                                          .appShadow(Colors.grey[200]!, 4, 4, 4),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: index == currentIndex &&
                                              int.parse(DateTime.now()
                                                  .toString()
                                                  .split(" ")
                                                  .first
                                                  .replaceAll("-", "")) ==
                                                  int.parse(days[index]
                                                      .dateInSeason
                                                      .replaceAll("-", ""))
                                              ? primaryColor
                                              : Colors.grey[300]!,
                                          width: 2)),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            UiHelper().appText(
                                                index == currentIndex &&
                                                    int.parse(DateTime.now().toString().split(" ").first.replaceAll("-", "")) ==
                                                        int.parse(days[index]
                                                            .dateInSeason
                                                            .replaceAll("-", ""))
                                                    ? "Today"
                                                    : "${DateFormat(DateFormat.WEEKDAY).format(DateTime.parse(days[index].dateInSeason))}",
                                                color: index == currentIndex &&
                                                    int.parse(DateTime.now()
                                                        .toString()
                                                        .split(" ")
                                                        .first
                                                        .replaceAll("-", "")) ==
                                                        int.parse(
                                                            days[index].dateInSeason.replaceAll("-", ""))
                                                    ? primaryColor
                                                    : Colors.grey,
                                                weight: FontWeight.w500),
                                            days[index].heatWaveAlert! ||
                                                days[index].frostAlert!
                                                ? Container(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 20, vertical: 2),
                                                margin: const EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Text.rich(TextSpan(
                                                    text: "excessive".tr(context),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500),
                                                    children: [
                                                      days[index].heatWaveAlert!
                                                          ? TextSpan(
                                                          text:
                                                          "heat".tr(context))
                                                          : days[index].frostAlert!
                                                          ? TextSpan(
                                                          text: "fros"
                                                              .tr(context))
                                                          : TextSpan(text: "")
                                                    ])))
                                                : const SizedBox.shrink()
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: days[index]
                                                          .recommandationDepth !=
                                                          0
                                                          ? primaryColor
                                                          : Colors.grey,
                                                      shape: BoxShape.circle),
                                                  child: SvgPicture.asset(
                                                    Images.irrigation,
                                                    width: 15,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                days[index].recommandationDepth != 0
                                                    ? Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    UiHelper().appText(
                                                        "${days[index].recommandationDepth!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                                                        color: primaryColor,
                                                        weight: FontWeight.w600,
                                                        size: 16),
                                                    // SizedBox(height: 5,),
                                                  ],
                                                )
                                                    : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "-",
                                                      color: Colors.grey,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                UiHelper().appTextTranslation("total",
                                                    context: context,
                                                    color: index == currentIndex &&
                                                        int.parse(DateTime.now()
                                                            .toString()
                                                            .split(" ")
                                                            .first
                                                            .replaceAll(
                                                            "-", "")) ==
                                                            int.parse(days[index]
                                                                .dateInSeason
                                                                .replaceAll("-", ""))
                                                        ? Colors.black
                                                        : Colors.grey,
                                                    weight: FontWeight.normal,
                                                    size: 18),
                                                days[index].recommandationDepth != 0
                                                    ? Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    cropUnits.cropUnit
                                                        .measurementMethod!
                                                        .toLowerCase() ==
                                                        "metric"
                                                        ? Row(
                                                      children: [
                                                        UiHelper().appText(
                                                          "${days[index].recommandationVolume!.toStringAsFixed(1)} m",
                                                          color: Colors.black,
                                                          weight:
                                                          FontWeight.w500,
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(
                                                              bottom: 10),
                                                          child: UiHelper()
                                                              .appText(
                                                            "3",
                                                            color:
                                                            Colors.black,
                                                            weight: FontWeight
                                                                .w500,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                        : UiHelper().appText(
                                                      "${days[index].recommandationVolume!.toStringAsFixed(1)} gal",
                                                      color: Colors.black,
                                                      weight: FontWeight.w500,
                                                    ),
                                                  ],
                                                )
                                                    : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "-",
                                                      color: Colors.grey,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                UiHelper().appTextTranslation("hr",
                                                    context: context,
                                                    color: index == currentIndex &&
                                                        int.parse(DateTime.now()
                                                            .toString()
                                                            .split(" ")
                                                            .first
                                                            .replaceAll(
                                                            "-", "")) ==
                                                            int.parse(days[index]
                                                                .dateInSeason
                                                                .replaceAll("-", ""))
                                                        ? Colors.black
                                                        : Colors.grey,
                                                    weight: FontWeight.normal,
                                                    size: 20),
                                                days[index].recommandationDepth != 0
                                                    ? Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      " ${days[index].recommandationTime}",
                                                      color: Colors.black,
                                                      weight: FontWeight.w500,
                                                    ),
                                                  ],
                                                )
                                                    : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "-",
                                                      color: Colors.grey,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                SvgPicture.asset(
                                                  Images.weatherFall,
                                                  color: index == currentIndex &&
                                                      int.parse(DateTime.now()
                                                          .toString()
                                                          .split(" ")
                                                          .first
                                                          .replaceAll("-", "")) ==
                                                          int.parse(days[index]
                                                              .dateInSeason
                                                              .replaceAll("-", ""))
                                                      ? Colors.black
                                                      : Colors.grey,
                                                  width: 30,
                                                ),
                                                days[index].recommandationDepth != 0
                                                    ? Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "${days[index].rain!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                                                      color: Colors.black,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                                    : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "-",
                                                      color: Colors.grey,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  Images.reading,
                                                  color: index == currentIndex &&
                                                      int.parse(DateTime.now()
                                                          .toString()
                                                          .split(" ")
                                                          .first
                                                          .replaceAll("-", "")) ==
                                                          int.parse(days[index]
                                                              .dateInSeason
                                                              .replaceAll("-", ""))
                                                      ? Colors.black
                                                      : Colors.grey,
                                                  width: 30,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    UiHelper().appText(
                                                      "${days[index].et!.toStringAsFixed(1)} ${cropUnits.cropUnit.measurementMethod!.toLowerCase() == "metric" ? "mm" : "inch"}",
                                                      color: Colors.black,
                                                      weight: FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                          itemCount: days.length,
                        ),


                      ],
                    ),

                )
              ],
            );
          },
          error: (error, stackTrace) {
            debugPrint(stackTrace.toString());
            return Center(child: Text('noRecordings'.tr(context)));
          },
          loading: () => const Center(
              child: CircularProgressIndicator(
            color: primaryColor,
          )),
        ),
      ),
    );
  }
}
