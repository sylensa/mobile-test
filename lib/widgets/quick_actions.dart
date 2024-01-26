import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/controllers/crop_unit_modal_controller.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/models/irrigation_program.dart';
import 'package:netafim_mobile/models/requests/set_program_payload.dart';
import 'package:netafim_mobile/pages/home_page.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/widgets/crop_unit_time.dart';
import 'package:netafim_mobile/widgets/device_list.dart';

import '../controllers/update_irrigation_program.dart';

class QuickActions extends ConsumerStatefulWidget {
  const QuickActions({Key? key, required this.program}) : super(key: key);
  final IrrigationProgram? program;

  @override
  ConsumerState<QuickActions> createState() => _QuickActionsState();
}

class _QuickActionsState extends ConsumerState<QuickActions> {
  int shiftIndex = -1;
  double amount = 0.0;
  double protocol = 0.0;
  bool showDropDown = false;
  bool showInfo = false;
  List<CustomDeviceModel> firstWeek = [
    CustomDeviceModel(
        name: "S",
        type: "1",
        factor: "Sunday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "M",
        type: "1",
        factor: "Monday",

        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "T",
        type: "1",
        factor: "Tuesday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "W",
        type: "1",
        factor: "Wednesday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "T",
        type: "1",
        factor: "Thursday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "F",
        type: "1",
        factor: "Friday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "S",
        type: "1",
        factor: "Saturday",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
  ];
  List<CustomDeviceModel> secondWeek = [
    CustomDeviceModel(
        name: "S",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "M",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "T",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "W",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),

    CustomDeviceModel(
        name: "T",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "F",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
    CustomDeviceModel(
        name: "S",
        type: "1",
        color: Colors.grey[400]!,
        backgroundColor: Colors.white),
  ];
  List<CustomDeviceModel> shifts = [];
  List<CustomDeviceModel> items = [];
  CustomDeviceModel? selectedValue;

  String duration = "00.00";

  updateQuickActions() async {
    final messanger = ScaffoldMessenger.of(context);
    Map<String, List<int>> irrigationWeekDays = {
      "w1": [],
      "w2": [],
    };
    Map<String, List<int>> dosingWeekDays = {
      "w1": [],
      "w2": [],
    };
    List<ShiftPayload> shiftPayloads = [];
    final updateNotifier = ref.watch(updateIrrigationProgramProvider.notifier);
    final updateState = ref.watch(updateIrrigationProgramProvider);
    setState(() {
      for (int i = 0; i < shifts.length; i++) {
        shiftPayloads.add(ShiftPayload(
          active: shifts[i].expand,
          factor: int.parse(shifts[i].factor),
          shiftId: int.parse(shifts[i].number),
        ));
      }

      for (int i = 0; i < firstWeek.length; i++) {
        if (firstWeek[i].type == "2") {
          irrigationWeekDays['w1']!.add(i + 1);
        } else if (firstWeek[i].type == "3") {
          dosingWeekDays['w1']!.add(i + 1);
        }
      }
      for (int i = 0; i < secondWeek.length; i++) {
        if (secondWeek[i].type == "2") {
          irrigationWeekDays['w2']!.add(i + 8);
        } else if (secondWeek[i].type == "3") {
          dosingWeekDays['w2']!.add(i + 8);
        }
      }
    });
    final type = selectedValue!.type.toLowerCase();
    String value;
    if (type == 'time') {
      final time = duration!.split(':');
      value =
          (int.parse(time[0]) * 60 * 60 + int.parse(time[1]) * 60).toString();
    } else {
      // amount must have two decimal places
      value = amount.toStringAsFixed(2);
    }

    SetProgramPayload setProgramPayload = SetProgramPayload(
        programId: widget.program!.irrigationProgramId,
        cropUnitId: widget.program!.cropUnitId,
        valueType: type,
        valuePerShift: value,
        deviceUuid: widget.program!.deviceUuid,
        dosingWeekDays: dosingWeekDays,
        irrigationWeekDays: irrigationWeekDays,
        endDate: widget.program!.endDate,
        shifts: shiftPayloads);
    print("setProgramPayload:${setProgramPayload.toJson()}");
    // return;
    Navigator.pop(context);
    await updateNotifier.updateProgram(setProgramPayload);
  }

  updateProgramListeners() {
    ref.listen(
      updateIrrigationProgramProvider,
      (previous, next) {
        if (next.success) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: snackBarColor,
            content:  UiHelper().appTextTranslation("requestSent",context: context),
            showCloseIcon: true,
            closeIconColor: Colors.white,
            action: SnackBarAction(
              label: '',
              onPressed: () =>
                  ScaffoldMessenger.of(context).hideCurrentSnackBar(),
            ),
          ));
          return;
        }
        if (next.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: snackBarColor,
            content: Text("${next.error}"),
            showCloseIcon: true,
            closeIconColor: Colors.white,
            action: SnackBarAction(
              label: '',
              onPressed: () =>
                  ScaffoldMessenger.of(context).hideCurrentSnackBar(),
            ),
          ));
          return;
        }
      },
    );
  }

  irrigationAndDosingReset() {
    if (widget.program != null) {
      for (var entry in widget.program!.irrigationWeekDays.entries) {
        if (entry.key == "week1") {
          if(entry.value.isNotEmpty){
            for (int i = 0; i < entry.value.length; i++) {
              print("entry:${entry.value[i]}");
              firstWeek[entry.value[i] - 1].type = "2";
              firstWeek[entry.value[i] - 1].color = Colors.white;
              firstWeek[entry.value[i] - 1].backgroundColor = primaryColor;
            }
          }

        } else if (entry.key == "week2") {
          if(entry.value.isNotEmpty){
            for (int i = 0; i < entry.value.length; i++) {
              print("secondWeek entry:${entry.value[i]}");
              secondWeek[entry.value[i] -1].type = "2";
              secondWeek[entry.value[i] -1].color = Colors.white;
              secondWeek[entry.value[i] -1].backgroundColor = primaryColor;


            }
          }

        }
      }
      // dosing
      for (var entry in widget.program!.dosingWeekDays.entries) {
        if (entry.key == "week1") {
          for (int i = 0; i < entry.value.length; i++) {
            print("entry:${entry.value[i]}");
            firstWeek[entry.value[i] - 1].type = "2";
            firstWeek[entry.value[i] - 1].color = Colors.white;
            firstWeek[entry.value[i] - 1].backgroundColor = primaryColor;
          }
        } else if (entry.key == "week2") {
          for (int i = 0; i < entry.value.length; i++) {
            print("entry1:${entry.value[i]}");
            secondWeek[entry.value[i] - 8].type = "2";
            secondWeek[entry.value[i] - 8].color = Colors.white;
            secondWeek[entry.value[i] - 8].backgroundColor = primaryColor;
          }
        }
      }

      String weekday = DateFormat(DateFormat.WEEKDAY).format(DateTime.now());
      for (var entry in widget.program!.dosingWeekDays.entries) {
          if(entry.value.isNotEmpty){
            for (int i = 0; i < firstWeek.length; i++) {
              if (weekday.toLowerCase() == firstWeek[i].factor.toLowerCase()) {
                // firstWeek[i].expand = true;
                print("weekday:$weekday");
              }
            }
          }
      }
      for (var entry in widget.program!.irrigationWeekDays.entries) {
        if(entry.value.isNotEmpty){
          for (int i = 0; i < firstWeek.length; i++) {
            if (weekday.toLowerCase() == firstWeek[i].factor.toLowerCase()) {
              // firstWeek[i].expand = true;
              print("weekday:$weekday");
            }
          }
        }
      }

    }
  }

  shiftsReset() {
    if (widget.program != null) {
      for (int i = 0; i < widget.program!.shifts.length; i++) {
        CustomDeviceModel customDeviceModel = CustomDeviceModel(
            name: "${widget.program!.shifts[i].recipeName}",
            amount:
                "${widget.program!.shifts[i].depth} ${widget.program!.shifts[i].depthUom}",
            factor: "${widget.program!.shifts[i].factor}",
            expand: true,
            number: "${widget.program!.shifts[i].number}",
            type: "1",
            color: primaryColor,
            backgroundColor: Colors.white);

        shifts.add(customDeviceModel);
      }
    }
  }

  settingAmountValue() {
    items = [
      CustomDeviceModel(
          name: "Amount in mm",
          type: "Depth",
          factor: "mm",
          irrigationValue: "0",
          color: primaryColor,
          backgroundColor: Colors.white),
      CustomDeviceModel(
          name: "Quantity in m",
          type: "Quantity",
          factor: "3",
          irrigationValue: "0",
          color: primaryColor,
          backgroundColor: Colors.white),
      CustomDeviceModel(
          name: "Time in Hours",
          type: "Time",
          factor: "",
          irrigationValue: "00:00",
          color: primaryColor,
          backgroundColor: Colors.white
      ),
    ];
    for (int i = 0; i < items.length; i++) {
      if (items[i].type == widget.program!.programType) {
        selectedValue = items[i];
        if(selectedValue!.factor.isNotEmpty){
          amount = double.parse(widget.program!.irrigationValue.split(" ").first);
        }else{
          duration = widget.program!.irrigationValue;
        }

        print("duration:${duration}");
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // irrigation week
    if (widget.program != null) {
      print("program type:${widget.program!.irrigationValue}");
      irrigationAndDosingReset();
      shiftsReset();
      settingAmountValue();
    }
  }

  @override
  Widget build(BuildContext context) {
    final updateNotifier = ref.watch(updateIrrigationProgramProvider.notifier);
    final updateState = ref.watch(updateIrrigationProgramProvider);
    final isIrrigating = ref.watch(isIrrigatingProvider);
    final actionsNotifier = ref.watch(changeProgramStateProvider.notifier);
    updateProgramListeners();
    return Scaffold(
      body: widget.program != null
          ? Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // if (isIrrigating[widget.program!.cropUnitId] == true)
                        const NewWidget(),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          decoration: BoxDecoration(
                              color: showDropDown
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: showDropDown
                                            ? Colors.grey[400]!
                                            : Colors.transparent),
                                    boxShadow: UiHelper().elevation(
                                        color: Colors.grey[100]!, elevation: 1),
                                    borderRadius: BorderRadius.circular(
                                        showDropDown ? 30 : 30)),
                                child: Column(
                                  children: [
                                    Container(
                                      width: UiHelper().appWidth(context),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              // setState(() {
                                              //   showDropDown = !showDropDown;
                                              //   showInfo = false;
                                              // });
                                            },
                                            child: Container(
                                              width:
                                                  UiHelper().appWidth(context) /
                                                      2,
                                              child: Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 0,
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        if (selectedValue!
                                                            .factor.isEmpty)
                                                          Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5),
                                                              width: UiHelper()
                                                                      .appWidth(
                                                                          context) *
                                                                  0.37,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(5),
                                                                    decoration:  BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color:
                                                                        Colors.grey[400]!),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      Images
                                                                          .irrigation,
                                                                      color: Colors
                                                                          .white,
                                                                      width: 15,
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  UiHelper().appText(
                                                                      selectedValue!
                                                                          .type,
                                                                      align: TextAlign
                                                                          .left,
                                                                      color: Colors.grey[400]!,
                                                                      size: 18),
                                                                ],
                                                              )),
                                                        if (selectedValue!
                                                            .factor.isNotEmpty)
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            width: UiHelper()
                                                                    .appWidth(
                                                                        context) *
                                                                0.37,
                                                            child: selectedValue!
                                                                        .factor ==
                                                                    "3"
                                                                ? Row(
                                                                    children: [
                                                                      Container(
                                                                        padding:
                                                                            const EdgeInsets.all(7),
                                                                        decoration:  BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            color: Colors.grey[400]!),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          Images
                                                                              .irrigation,
                                                                          color:
                                                                              Colors.white,
                                                                          width:
                                                                              15,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          UiHelper().appText(
                                                                              "(",
                                                                              color: Colors.grey[400]!,
                                                                              size: 20,
                                                                              align: TextAlign.center),
                                                                          UiHelper().appText(
                                                                              "m",
                                                                              color: Colors.grey[400]!,
                                                                              size: 20,
                                                                              align: TextAlign.center),
                                                                          Container(
                                                                              margin: const EdgeInsets.only(bottom: 5),
                                                                              child: UiHelper().appText("3", color:Colors.grey[400]!, size: 10, align: TextAlign.center)),
                                                                          UiHelper().appText(
                                                                              ")",
                                                                              color:Colors.grey[400]!,
                                                                              size: 20,
                                                                              align: TextAlign.center),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  )
                                                                : Row(
                                                                    children: [
                                                                      Container(
                                                                        padding:
                                                                            const EdgeInsets.all(7),
                                                                        decoration:  BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                            color: Colors.grey[400]!),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          Images
                                                                              .irrigation,
                                                                          color:
                                                                              Colors.white,
                                                                          width:
                                                                              15,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      UiHelper().appText(
                                                                          "(mm)",
                                                                          color: Colors.grey[400]!,
                                                                          size:
                                                                              20,
                                                                          align:
                                                                              TextAlign.left),
                                                                    ],
                                                                  ),
                                                          )
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      //  Icon(
                                                      //   Icons
                                                      //       .keyboard_arrow_down,
                                                      //   color: Colors.grey[400]!,
                                                      //   size: 30,
                                                      // ),
                                                      // const SizedBox(
                                                      //   width: 5,
                                                      // ),
                                                      Container(
                                                        color: Colors.grey[200],
                                                        width: 1,
                                                        height: 46,
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                          Row(
                                            children: [
                                              if (selectedValue!
                                                  .factor.isNotEmpty)
                                                Container(
                                                  width: UiHelper()
                                                          .appWidth(context) *
                                                      0.35,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .grey[200]!),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          // setState(() {
                                                          //   print(
                                                          //       "amount:$amount");
                                                          //   if (amount > 1) {
                                                          //     amount -= 1;
                                                          //   }
                                                          // });
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border: Border.all(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                              boxShadow: UiHelper()
                                                                  .elevation(
                                                                      color: Colors
                                                                              .grey[
                                                                          200]!,
                                                                      elevation:
                                                                          5)),
                                                          child:
                                                              SvgPicture.asset(
                                                                  Images.sub,color: Colors.grey[400]!,),
                                                        ),
                                                      ),
                                                      UiHelper().appText(
                                                          "${amount.toDouble().toStringAsFixed(2)}",
                                                          color: Colors.grey[400]!,
                                                          weight:
                                                              FontWeight.w500,
                                                          size: 20),
                                                      GestureDetector(
                                                        onTap: () {
                                                          // setState(() {
                                                          //   print(
                                                          //       "amount:$amount");
                                                          //   amount += 1;
                                                          // });
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border: Border.all(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                              boxShadow: UiHelper()
                                                                  .elevation(
                                                                      color: Colors
                                                                              .grey[
                                                                          200]!,
                                                                      elevation:
                                                                          5)),
                                                          child:
                                                              SvgPicture.asset(
                                                                  Images.add,color: Colors.grey[400]!,),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              else
                                                Container(
                                                  width: UiHelper()
                                                          .appWidth(context) *
                                                      0.35,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 0),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .grey[200]!),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    child:
                                                        CropUnitDurationInput(
                                                            value: duration,
                                                            onDurationChange:
                                                                (d) {
                                                              setState(() {
                                                                duration = d;
                                                                print("duration:$duration");
                                                              });
                                                    }),
                                                  ),
                                                ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: showDropDown ? 10 : 10,
                              ),
                              // Container(
                              //   padding: const EdgeInsets.all(0.0),
                              //   decoration:  BoxDecoration(
                              //     color: Colors.white,
                              //     border: Border.all(color: showDropDown ? primaryColor : Colors.transparent),
                              //     boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 1),
                              //     borderRadius: BorderRadius.circular(showDropDown ? 0 : 20)
                              // ),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       GestureDetector(
                              //         onTap: (){
                              //           setState(() {
                              //             showDropDown = !showDropDown;
                              //           });
                              //         },
                              //         child: Container(
                              //           padding: const EdgeInsets.all(10.0),
                              //           decoration: BoxDecoration(
                              //               color: Colors.white,
                              //               // border: Border.all(color: showDropDown ? primaryColor : Colors.transparent),
                              //               boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 1),
                              //               borderRadius: BorderRadius.circular(0)
                              //           ),
                              //           child: Row(
                              //             children: [
                              //               Column(
                              //                 crossAxisAlignment: CrossAxisAlignment.start,
                              //                 children: [
                              //                   if(selectedValue!.factor.isEmpty)
                              //                   Container(
                              //                       padding: EdgeInsets.all(5),
                              //                       width: UiHelper().appWidth(context) * 0.37,
                              //                       child: Row(
                              //                         children: [
                              //                           Container(
                              //                             padding: EdgeInsets.all(5),
                              //                             decoration: BoxDecoration(
                              //                                 shape: BoxShape.circle,
                              //                                 color: primaryColor
                              //                             ),
                              //                             child:  SvgPicture.asset(Images.irrigation,color: Colors.white,width: 15,),
                              //                           ),
                              //                           SizedBox(width: 10,),
                              //                           UiHelper().appText(selectedValue!.type,align: TextAlign.left,size: 18),
                              //                         ],
                              //                       )
                              //                   ),
                              //                   if( selectedValue!.factor.isNotEmpty)
                              //                     Container(
                              //                       padding: EdgeInsets.all(5),
                              //
                              //                       width: UiHelper().appWidth(context) * 0.37,
                              //                       child: selectedValue!.factor == "3" ?
                              //                       Row(
                              //                         children: [
                              //                           Container(
                              //                             padding: EdgeInsets.all(7),
                              //                             decoration: BoxDecoration(
                              //                                 shape: BoxShape.circle,
                              //                                 color: primaryColor
                              //                             ),
                              //                             child:  SvgPicture.asset(Images.irrigation,color: Colors.white,width: 15,),
                              //                           ),
                              //                           SizedBox(width: 10,),
                              //                           Row(
                              //                             mainAxisAlignment: MainAxisAlignment.start,
                              //                             children: [
                              //                               UiHelper().appText("(",color: Colors.black,size: 20,align: TextAlign.center),
                              //                               UiHelper().appText("m",color: Colors.black,size: 20,align: TextAlign.center),
                              //                               Container(
                              //                                   margin: EdgeInsets.only(bottom: 5),
                              //                                   child: UiHelper().appText("3",color: Colors.black,size: 10,align: TextAlign.center)
                              //                               ),
                              //                               UiHelper().appText(")",color: Colors.black,size: 20,align: TextAlign.center),
                              //                             ],
                              //                           ),
                              //                         ],
                              //                       ) :
                              //                       Row(
                              //                         children: [
                              //                           Container(
                              //                             padding: EdgeInsets.all(7),
                              //                             decoration: BoxDecoration(
                              //                                 shape: BoxShape.circle,
                              //                                 color: primaryColor
                              //                             ),
                              //                             child:  SvgPicture.asset(Images.irrigation,color: Colors.white,width: 15,),
                              //                           ),
                              //                           SizedBox(width: 10,),
                              //                           UiHelper().appText("(mm)",color: Colors.black,size: 20,align: TextAlign.left),
                              //                         ],
                              //                       ),
                              //
                              //                     )
                              //                   ,
                              //                 ],
                              //               ),
                              //               Icon(Icons.keyboard_arrow_down,color: primaryColor,),
                              //
                              //             ],
                              //           ),
                              //         ),
                              //       ),
                              //      Container(
                              //        color: Colors.grey[200],
                              //        width: 1,
                              //        height: 50,
                              //      ),
                              //       Container(
                              //         padding: const EdgeInsets.all(6.0),
                              //         decoration: BoxDecoration(
                              //             color: Colors.white,
                              //             // border: Border.all(color: showDropDown ? primaryColor : Colors.transparent),
                              //             boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 1),
                              //             borderRadius: BorderRadius.circular(0)
                              //         ),
                              //         child: Row(
                              //           children: [
                              //             selectedValue!.factor.isNotEmpty ?
                              //             Container(
                              //               width: UiHelper().appWidth(context) * 0.37,
                              //               decoration: BoxDecoration(
                              //                   border: Border.all(color: Colors.grey[200]!),
                              //                   borderRadius: BorderRadius.circular(30)),
                              //               child: Row(
                              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //                 children: [
                              //                   GestureDetector(
                              //                     onTap: (){
                              //                       setState(() {
                              //                         print("amount:${amount}");
                              //                         if(amount != 0.0){
                              //                           amount -= 10;
                              //                         }
                              //
                              //                       });
                              //                     },
                              //                     child: Container(
                              //                       padding: const EdgeInsets.all(7),
                              //                       decoration: BoxDecoration(
                              //                           color: Colors.white,
                              //                           shape: BoxShape.circle,
                              //                           border: Border.all(color: Colors.grey[200]!),
                              //                           boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 5)),
                              //                       child: SvgPicture.asset(Images.sub),
                              //                     ),
                              //                   ),
                              //                   UiHelper().appText(
                              //                       "${(amount/10).toStringAsFixed(1)}",
                              //                       color: Colors.black,
                              //                       weight: FontWeight.w500,
                              //                       size: 20
                              //                   ),
                              //                   GestureDetector(
                              //                     onTap: (){
                              //                       setState(() {
                              //                         print("amount:${amount}");
                              //                         amount += 10;
                              //                       });
                              //                     },
                              //                     child:Container(
                              //                       padding: const EdgeInsets.all(7),
                              //                       decoration: BoxDecoration(
                              //                           color: Colors.white,
                              //                           shape: BoxShape.circle,
                              //                           border: Border.all(color: Colors.grey[200]!),
                              //                           boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 5)),
                              //                       child: SvgPicture.asset(Images.add),
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //             ) :
                              //             Container(
                              //               width: UiHelper().appWidth(context) * 0.37,
                              //               decoration: BoxDecoration(
                              //                   border: Border.all(color: Colors.grey[200]!),
                              //                   borderRadius: BorderRadius.circular(30)
                              //               ),
                              //               child: Container(
                              //                 padding: EdgeInsets.symmetric(horizontal: 10),
                              //                 child: CropUnitDurationInput(onDurationChange: (d) {
                              //                   setState(() {
                              //                     duration = d;
                              //                     print("duration:$duration");
                              //                   });
                              //                 }),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              Stack(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: UiHelper().appShadow(
                                            Colors.grey[200]!, 4, 4, 4),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0, right: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                UiHelper().appTextTranslation(
                                                    "quickActions.weekDays",
                                                    weight: FontWeight.w500,
                                                    color: Colors.grey[400]!,
                                                    context: context),
                                                InkWell(
                                                  onTap: () {
                                                    UiHelper().showInfoAlert(
                                                        context: context);
                                                  },
                                                  child: SvgPicture.asset(
                                                    Images.tooltipButton,
                                                    width: 30,color: Colors.grey[400]!,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            height: 40,
                                            width: UiHelper().appWidth(context),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int index = 0;
                                                    index < firstWeek.length;
                                                    index++)
                                                  GestureDetector(
                                                    onTap: () {
                                                      // setState(() {
                                                      //   if (firstWeek[index]
                                                      //           .type ==
                                                      //       "1") {
                                                      //     firstWeek[index]
                                                      //         .type = "2";
                                                      //     firstWeek[index]
                                                      //             .color =
                                                      //         Colors.white;
                                                      //     firstWeek[index]
                                                      //             .backgroundColor =
                                                      //         primaryColor;
                                                      //   } else if (firstWeek[
                                                      //               index]
                                                      //           .type ==
                                                      //       "2") {
                                                      //     firstWeek[index]
                                                      //         .type = "3";
                                                      //     firstWeek[index]
                                                      //             .color =
                                                      //         Colors.white;
                                                      //     firstWeek[index]
                                                      //             .backgroundColor =
                                                      //         Colors.green;
                                                      //   } else if (firstWeek[
                                                      //               index]
                                                      //           .type ==
                                                      //       "3") {
                                                      //     firstWeek[index]
                                                      //         .type = "1";
                                                      //     firstWeek[index]
                                                      //             .color =
                                                      //     Colors.grey[400]!;
                                                      //     firstWeek[index]
                                                      //             .backgroundColor =
                                                      //         Colors.white;
                                                      //   }
                                                      // });
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.all(
                                                          firstWeek[index].expand
                                                              ? 1
                                                              : 0),
                                                      decoration: BoxDecoration(
                                                          color: firstWeek[index]
                                                                  .expand
                                                              ? Colors
                                                                  .transparent
                                                              : Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: firstWeek[
                                                                          index]
                                                                      .expand
                                                                  ? primaryColor
                                                                  : Colors.grey[
                                                                      200]!,
                                                              width:
                                                                  firstWeek[index]
                                                                          .expand
                                                                      ? 2
                                                                      : 1)),
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            color: firstWeek[index]
                                                                .backgroundColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border: Border.all(
                                                                color: firstWeek[
                                                                            index]
                                                                        .expand
                                                                    ? primaryColor
                                                                    : Colors.grey[
                                                                        200]!,
                                                                width: firstWeek[
                                                                            index]
                                                                        .expand
                                                                    ? 2
                                                                    : 0)),
                                                        child: UiHelper().appText(
                                                            firstWeek[index].name,
                                                            color:
                                                                firstWeek[index]
                                                                    .color),
                                                      ),
                                                    ),
                                                  ),
                                                const SizedBox(
                                                  width: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            height: 40,
                                            width: UiHelper().appWidth(context),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                for (int index = 0;
                                                    index < secondWeek.length;
                                                    index++)
                                                  GestureDetector(
                                                    onTap: () {
                                                      // setState(() {
                                                      //   if (secondWeek[index]
                                                      //           .type ==
                                                      //       "1") {
                                                      //     secondWeek[index]
                                                      //         .type = "2";
                                                      //     secondWeek[index]
                                                      //             .color =
                                                      //         Colors.white;
                                                      //     secondWeek[index]
                                                      //             .backgroundColor =
                                                      //         primaryColor;
                                                      //   } else if (secondWeek[
                                                      //               index]
                                                      //           .type ==
                                                      //       "2") {
                                                      //     secondWeek[index]
                                                      //         .type = "3";
                                                      //     secondWeek[index]
                                                      //             .color =
                                                      //         Colors.white;
                                                      //     secondWeek[index]
                                                      //             .backgroundColor =
                                                      //         Colors.green;
                                                      //   } else if (secondWeek[
                                                      //               index]
                                                      //           .type ==
                                                      //       "3") {
                                                      //     secondWeek[index]
                                                      //         .type = "1";
                                                      //     secondWeek[index]
                                                      //             .color =
                                                      //     Colors.grey[400]!;
                                                      //     secondWeek[index]
                                                      //             .backgroundColor =
                                                      //         Colors.white;
                                                      //   }
                                                      // });
                                                    },
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: secondWeek[
                                                                  index]
                                                              .backgroundColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .grey[200]!)),
                                                      child: UiHelper().appText(
                                                          secondWeek[index].name,
                                                          color:
                                                              secondWeek[index]
                                                                  .color),
                                                    ),
                                                  ),
                                                const SizedBox(
                                                  width: 0,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (showDropDown)
                                    Positioned(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 0),
                                        height: 120,
                                        width: UiHelper().appWidth(context),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20)),
                                            boxShadow: UiHelper().elevation(
                                                color: Colors.grey[100]!,
                                                elevation: 1)),
                                        child: ListView.builder(
                                            padding: const EdgeInsets.all(20),
                                            itemCount: items.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    selectedValue =
                                                        items[index];
                                                    showDropDown =
                                                        !showDropDown;
                                                  });
                                                },
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    UiHelper().appText(
                                                        items[index].name,
                                                        weight: FontWeight.w400,
                                                        size: 18,
                                                        color: selectedValue ==
                                                                items[index]
                                                            ? primaryColor
                                                            : Colors.black),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // Container(
                              //   padding:
                              //   const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              //   decoration: BoxDecoration(
                              //       color: Colors.white,
                              //       boxShadow: UiHelper().appShadow(Colors.grey[200]!, 4, 4, 4),
                              //       borderRadius: BorderRadius.circular(30)),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       UiHelper().appText(
                              //         "Protocol Kc ",
                              //         color: Colors.black,
                              //         weight: FontWeight.w500,
                              //       ),
                              //       Container(
                              //         width: UiHelper().appWidth(context) * 0.4,
                              //         decoration: BoxDecoration(
                              //             border: Border.all(color: Colors.grey[200]!),
                              //             borderRadius: BorderRadius.circular(30)),
                              //         child: Row(
                              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //           children: [
                              //             GestureDetector(
                              //               onTap: (){
                              //                 setState(() {
                              //                   if(protocol != 0.0){
                              //                     protocol -=10;
                              //                   }
                              //
                              //                 });
                              //               },
                              //               child:Container(
                              //                 padding: const EdgeInsets.all(7),
                              //                 decoration: BoxDecoration(
                              //                     color: Colors.white,
                              //                     shape: BoxShape.circle,
                              //                     border: Border.all(color: Colors.grey[200]!),
                              //                     boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 5)),
                              //                 child: SvgPicture.asset(Images.sub),
                              //               ),
                              //             ),
                              //             UiHelper().appText(
                              //                 "${(protocol/10).toStringAsFixed(1)} ",
                              //                 color: Colors.black,
                              //                 weight: FontWeight.w500,
                              //                 size: 20
                              //             ),
                              //             GestureDetector(
                              //               onTap: (){
                              //                 setState(() {
                              //                   protocol +=10;
                              //                 });
                              //               },
                              //               child: Container(
                              //                 padding: const EdgeInsets.all(7),
                              //                 decoration: BoxDecoration(
                              //                     color: Colors.white,
                              //                     shape: BoxShape.circle,
                              //                     border: Border.all(color: Colors.grey[200]!),
                              //                     boxShadow: UiHelper().elevation(color: Colors.grey[200]!, elevation: 5)),
                              //                 child: SvgPicture.asset(Images.add),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: GestureDetector(
                              //         onTap: (){
                              //           UiHelper().showConfirmationDialog(
                              //               context: context,
                              //               onTap: (){
                              //                 setState(() {
                              //                   irrigationAndDosingReset();
                              //                 });
                              //               },
                              //             title: "Alert",
                              //             message: "Are you sure you want to reset the changes"
                              //           );
                              //
                              //         },
                              //         child: Container(
                              //           padding: const EdgeInsets.symmetric(
                              //               horizontal: 20, vertical: 5),
                              //           decoration: BoxDecoration(
                              //               border: Border.all(color: primaryColor),
                              //               borderRadius: BorderRadius.circular(30),
                              //               color: Colors.white),
                              //           child: UiHelper().appText("Cancel",
                              //               color: primaryColor, align: TextAlign.center),
                              //         ),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 10,
                              //     ),
                              //     Expanded(
                              //       child: GestureDetector(
                              //         onTap: () {
                              //
                              //           UiHelper().showConfirmationDialog(
                              //               context: context,
                              //             onTap: (){
                              //               updateQuickActions();
                              //             }
                              //           );
                              //         },
                              //         child: Container(
                              //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              //           decoration: BoxDecoration(
                              //               border: Border.all(color: Colors.grey[300]!),
                              //               borderRadius: BorderRadius.circular(30),
                              //               color: primaryColor),
                              //           child:!updateNotifier.state.loading ?
                              //           UiHelper().appText("Apply",
                              //               color: Colors.white, align: TextAlign.center) :
                              //           Stack(
                              //             children: [
                              //               Center(child: UiHelper().progress()),
                              //             ],
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                            ],
                          ),
                        ),
                        // Container(
                        //   color: Colors.grey,
                        //   width: UiHelper().appWidth(context),
                        //   height: 1,
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey[200]!),
                                boxShadow: UiHelper()
                                    .appShadow(Colors.grey[100]!, 4, 4, 4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UiHelper().appTextTranslation(
                                    "quickActions.shift",
                                    context: context,
                                    color: Colors.grey[400]!,
                                    align: TextAlign.center),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        UiHelper().appText("Name",
                                            color: Colors.grey,
                                            align: TextAlign.right),
                                        UiHelper().appText("Amount",
                                            color: Colors.grey,
                                            align: TextAlign.center),
                                        UiHelper().appText("Factor",
                                            color: Colors.grey,
                                            align: TextAlign.center),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    if (shifts.isNotEmpty)
                                      for (int i = 0; i < shifts.length; i++)
                                        Column(
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              decoration: BoxDecoration(
                                                  color: primaryFadeColor,
                                                  border: Border.all(
                                                      color: shiftIndex == i
                                                          ? primaryColor
                                                          : Colors.grey[200]!,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 30,
                                                          child: Checkbox(

                                                              value: shifts[i]
                                                                  .expand,
                                                              checkColor: Colors.white,
                                                              activeColor: Colors.grey[400]!,
                                                              onChanged: (bool?
                                                                  value) {
                                                                // setState(() {
                                                                //   shifts[i]
                                                                //           .expand =
                                                                //       value!;
                                                                // });
                                                              }
                                                              ),
                                                        ),
                                                        UiHelper().appText(
                                                            "Shift ${shifts[i].number}",
                                                            color: Colors.black,
                                                            align:
                                                                TextAlign.right,
                                                            size: 14),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                      child: UiHelper().appText(
                                                          shifts[i].amount,
                                                          color: Colors.black,
                                                          align:
                                                              TextAlign.center,
                                                          size: 14)),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          shiftIndex = i;
                                                        });
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          UiHelper().appText(
                                                              "${shifts[i].factor}%",
                                                              color:
                                                                  Colors.black,
                                                              align: TextAlign
                                                                  .center,
                                                              size: 14),
                                                          SvgPicture.asset(
                                                            Images.alert,
                                                            width: 50,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        )
                                    else
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Center(
                                            child: UiHelper().appText(
                                                "No shifts available")),
                                      )
                                  ],
                                )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                            // UiHelper().showConfirmationDialog(
                            //     context: context,
                            //     onTap: (){
                            //       setState(() {
                            //         shiftsReset();
                            //       });
                            //     },
                            //     title: "Alert",
                            //     message: "Are you sure you want to reset the changes"
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[400]!),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: UiHelper().appTextTranslation("cancel",
                                context: context,
                                color: Colors.grey[400]!,
                                align: TextAlign.center),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // UiHelper().showConfirmationDialog(
                            //     context: context,
                            //     onTap: () async {
                            //       await updateQuickActions();
                            //       setState(() {});
                            //     });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[400]!),
                            child: updateState.loading
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        child: UiHelper().progress(),
                                        width: 30,
                                      ),
                                    ],
                                  )
                                : UiHelper().appTextTranslation("save",
                                    context: context,
                                    color: Colors.white,
                                    align: TextAlign.center),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: UiHelper().appTextTranslation(
                      "noIrrigationProgram",
                      context: context,
                      size: 16),
                ),
              ],
            ),
    );
  }
}

class NewWidget extends ConsumerWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cropUnitId = ref.watch(openedCropUnitIdProvider);
    final cropUnit = ref.watch(cropUnitsMapProvider)[cropUnitId];
    final program = cropUnit?.irrigationProgram;
    final actionsNotifier = ref.watch(changeProgramStateProvider.notifier);
    final state = ref.watch(changeProgramStateProvider);

    ref.listen(changeProgramStateProvider, (previous, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(next.error!),
        ));
        actionsNotifier.clearState();
      }
      if (next.success) {
        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          content: UiHelper().appTextTranslation('programUpdated',context: context),
        ));
        actionsNotifier.clearState();
      }
    });

    if (state.loading) {
      return const Center(
        child: CircularProgressIndicator(color: primaryColor),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: UiHelper()
                    .elevation(color: Colors.grey[100]!, elevation: 2),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (program?.isCropUnitIrrigating ?? false) ...[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // actionsNotifier.skipShift();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color:  Colors.grey[400]!,
                            )),
                        child: UiHelper().appTextTranslation("skipShift",context: context,
                            color:Colors.grey[400]!,
                            size: 16,
                            weight: FontWeight.w500,
                            align: TextAlign.center),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // actionsNotifier.stop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color:Colors.grey[400]!,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey[400]!)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper().appTextTranslation("stop",context: context,
                                color: Colors.white,
                                weight: FontWeight.w500,
                                size: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // actionsNotifier.pause();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[400]!,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color:Colors.grey[400]!, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper().appTextTranslation("pause",context: context,
                                color: Colors.white, size: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: program != null
                          ? () {
                              // actionsNotifier.skip();
                            }
                          : null,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey[400]!,
                            )),
                        child: UiHelper().appTextTranslation("skip",context: context,
                            color: program != null
                                ? Colors.grey[400]!
                                : Colors.grey[400]!,
                            size: 16,
                            weight: FontWeight.w500,
                            align: TextAlign.center),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (program?.showResumeButton ?? false)
                    Expanded(
                      child: GestureDetector(
                        onTap: program != null
                            ? () {
                                // actionsNotifier.resume();
                              }
                            : null,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              color: program != null
                                  ? Colors.grey[400]!
                                  : Colors.grey[400]!,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper().appTextTranslation("resume",context: context,
                                  color: Colors.white, size: 16),
                            ],
                          ),
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: GestureDetector(
                        onTap: program != null
                            ? () {
                                // actionsNotifier.start();
                              }
                            : null,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              color: program != null
                                  ? Colors.grey[400]!
                                  : Colors.grey[400]!,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey[400]!, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper().appTextTranslation("start",context: context,
                                  color: Colors.white, size: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
