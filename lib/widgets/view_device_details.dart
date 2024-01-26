import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/controllers/update_device_controller.dart';
import 'package:netafim_mobile/controllers/update_irrigation_blocks_controller.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/requests/graph_payload.dart';
import 'package:netafim_mobile/models/requests/irrigation_block_payload.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/states/viewable_device.dart';
import 'package:netafim_mobile/states/viewable_sensor.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/bottomsheet_ex.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/widgets/drop_down_field.dart';
import 'package:netafim_mobile/utils/widgets/selection_list_view.dart';
import 'package:netafim_mobile/widgets/tab_bar_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/device_details_controller.dart';
import '../controllers/devices_list_controller.dart';
import '../graph.dart';
import '../models/crop_unit_graphs_response.dart';
import '../states/device_details_state.dart';

class ViewDeviceDevices extends StatefulHookConsumerWidget {
  final ViewableDevice viewableDevice;

  const ViewDeviceDevices({Key? key, required this.viewableDevice})
      : super(key: key);

  @override
  ConsumerState<ViewDeviceDevices> createState() => _ViewDeviceDevicesState();
}

class _ViewDeviceDevicesState extends ConsumerState<ViewDeviceDevices> {
  List<String> depths = [
    "",
    "0",
    "5",
    "10",
    "15",
    "20",
    "25",
    "30",
    "40",
    "50",
    "60",
    "70",
    "80",
    "90",
    "100",
    "120",
    "140",
  ];

  List<String> listThresholds = [
    "Lower",
    "Higher",
  ];
  String selectedId = '';
  String selectedDepth = '';
  bool isRefresh = true;
  bool isRefreshSensor = false;

// bool isRefreshSensor  = false;
  List<String> listDevices = [];
  List<String> selectedThreshold = [];
  List<ViewableSensor> listSensors = [];
  String selectedDevice = '';
  TextEditingController deviceNameController = TextEditingController();
  TextEditingController pulseVolumeController = TextEditingController();
  TextEditingController coverageAreaController = TextEditingController();
  TextEditingController offSetController = TextEditingController();
  TextEditingController multiplierController = TextEditingController();
  int senserIndex = 0;
  List<TextEditingController> thanController = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];
  final nameFormKey = GlobalKey<FormState>();

  thresholdWidget(DeviceDetailsState deviceDetails) {
    // final deviceDetails = ref.watch(deviceDetailsNotifierProvider(widget.viewableDevice.id));
    for (int i = 0; i < deviceDetails.thresholds.length; i++) {
      selectedThreshold
          .add(deviceDetails.thresholds[i].thresholdType.toString());
      thanController[i].text = "${deviceDetails.thresholds[i].value}";
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (deviceDetails.thresholds.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              UiHelper()
                  .appText("Thresholds", weight: FontWeight.w500, size: 18),
              SizedBox(
                height: 20,
              ),
              for (int threshIndex = 0;
                  threshIndex < deviceDetails.thresholds.length;
                  threshIndex++)
                Container(
                  width: UiHelper().appWidth(context),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper().appText("#${threshIndex + 1}"),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: ColoredBox(
                          color: Colors.white,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400]!),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 10),
                              child: DropdownButton(
                                elevation: 0,
                                underline: const Divider(
                                  color: Colors.transparent,
                                ),
                                isExpanded: true,
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Icon(CupertinoIcons.chevron_down),
                                ),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF646464)),
                                items: [
                                  for (int i = 0;
                                      i < listThresholds.length;
                                      i++)
                                    DropdownMenuItem(
                                      value: listThresholds[i],
                                      child: UiHelper().appText(
                                          listThresholds[i],
                                          color:
                                              selectedThreshold[threshIndex] ==
                                                      listThresholds[i]
                                                  ? primaryColor
                                                  : Colors.black),
                                    )
                                ],
                                focusColor: Colors.white,
                                dropdownColor: Colors.white,
                                value: selectedThreshold[threshIndex],
                                onChanged: (value) {
                                  setState(() {
                                    selectedThreshold[threshIndex] = value!;
                                  });
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper().appText("Than"),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          controller: thanController[threshIndex],
                          keyboardType: TextInputType.text,
                          style: UiHelper().appStyle(weight: FontWeight.w500),
                          decoration: UiHelper().textFieldInputDecoration(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              borderColor: Colors.grey[300]!),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
      ],
    );
  }

  deviceWidget() {
    final deviceDetails =
        ref.watch(deviceDetailsNotifierProvider(widget.viewableDevice.id));

    if (!deviceDetails.fetchingDevice) {
      deviceNameController =
          useTextEditingController(text: deviceDetails.deviceName);
      pulseVolumeController =
          useTextEditingController(text: deviceDetails.pulseVolume.toString());
      coverageAreaController =
          useTextEditingController(text: deviceDetails.coverageArea.toString());
      offSetController = useTextEditingController(
          text: deviceDetails.offset.toString() != "null"
              ? deviceDetails.offset.toString()
              : "0.0");
      multiplierController = useTextEditingController(
          text: deviceDetails.multiplier.toString() != "null"
              ? deviceDetails.multiplier.toString()
              : "0.0");
    }

    return Container(
      padding: const EdgeInsets.only(left: 15, right: 20, bottom: 0, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiHelper().appTextTranslation("name",
              context: context, color: Colors.grey, size: 16),
          const SizedBox(
            height: 10,
          ),
          Form(
            key: nameFormKey,
            child: SizedBox(
              // height: 50,
              child: Center(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'required';
                    return null;
                  },
                  controller: deviceNameController,
                  style: UiHelper().appStyle(weight: FontWeight.w500),
                  decoration: UiHelper().textFieldInputDecoration(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      borderColor: Colors.grey[300]!),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              if (deviceDetails.canBeAssignedToIrrigationBlock &&
                  widget.viewableDevice.canBeAssignedToIrrigationBlock)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper().appTextTranslation("irrigationBlock",
                        context: context, color: Colors.grey),
                    SizedBox(
                      height: 10,
                    ),
                    DropDownField(
                      value: deviceDetails.selectedIrrigationBlockName,
                      onTap: () {
                        isRefresh = false;
                        setState(() {});
                        IrrigationBlockListView(
                          viewableDevice: widget.viewableDevice,
                          irrigationBlockName:
                              deviceDetails.selectedIrrigationBlockName,
                        ).asBottomSheet(context,
                            title: 'selectIrrigationBlock'.tr(context));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              if (deviceDetails.type == "Water meter")
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper().appTextTranslation("pulseVolume",
                                  context: context, color: Colors.grey),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                enabled: false,
                                controller: pulseVolumeController,
                                keyboardType: TextInputType.number,
                                style: UiHelper()
                                    .appStyle(weight: FontWeight.w500),
                                decoration: UiHelper().textFieldInputDecoration(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    borderColor: Colors.grey[300]!),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper()
                                  .appText("coverageArea", color: Colors.grey),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                enabled: false,
                                controller: coverageAreaController,
                                keyboardType: TextInputType.number,
                                style: UiHelper()
                                    .appStyle(weight: FontWeight.w500),
                                decoration: UiHelper().textFieldInputDecoration(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    borderColor: Colors.grey[300]!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              if (!widget.viewableDevice.isIoGroup)
                Row(
                  children: [
                    if (deviceDetails.sensors == null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper().appTextTranslation("depth",
                              context: context, color: Colors.grey),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: DropDownField(
                              value: deviceDetails.depth != null
                                  ? "${deviceDetails.depth}${widget.viewableDevice.depthUom}"
                                  : "",
                              onTap: () {
                                isRefresh = false;
                                setState(() {});
                                DeviceDepthListView(
                                        viewableDevice: widget.viewableDevice,
                                        selectedDepth: "${deviceDetails.depth}")
                                    .asBottomSheet(context,
                                        title: 'selectSensorDepth'.tr(context));
                              },
                            ),
                          ),
                        ],
                      ),
                    if (deviceDetails.sensors == null)
                      const SizedBox(
                        width: 10,
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper().appTextTranslation("offset",
                              context: context, color: Colors.grey),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: offSetController,
                            keyboardType: TextInputType.number,
                            style: UiHelper().appStyle(weight: FontWeight.w500),
                            decoration: UiHelper().textFieldInputDecoration(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                borderColor: Colors.grey[300]!),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper().appTextTranslation("multiplier",
                              context: context, color: Colors.grey),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: multiplierController,
                            keyboardType: TextInputType.number,
                            style: UiHelper().appStyle(weight: FontWeight.w500),
                            decoration: UiHelper().textFieldInputDecoration(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                            ),
                          ),
                        ],
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

  deviceWidgetChildren() {
    final deviceDetails =
        ref.watch(deviceDetailsNotifierProvider(widget.viewableDevice.id));
    deviceNameController =
        useTextEditingController(text: deviceDetails.deviceName);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiHelper().appTextTranslation("name",
              context: context, color: Colors.grey, size: 16),
          const SizedBox(
            height: 10,
          ),
          Form(
            key: nameFormKey,
            child: SizedBox(
              // height: 50,
              child: Center(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'required';
                    return null;
                  },
                  controller: deviceNameController,
                  style: UiHelper().appStyle(weight: FontWeight.w500),
                  decoration: UiHelper().textFieldInputDecoration(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      borderColor: Colors.grey[300]!),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          for (int deviceIndex = 0;
              deviceIndex < deviceDetails.children!.length;
              deviceIndex++)
            GestureDetector(
              onTap: () {
                context.push(
                    '${Routing.viewDeviceDetails}/${deviceDetails.children![deviceIndex].id}',
                    extra: deviceDetails.children![deviceIndex]);
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: UiHelper()
                            .elevation(color: Colors.grey[300]!, elevation: 2)),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("port",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  UiHelper()
                                      .appText("${deviceIndex + 1}", size: 16),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("nameColon",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                      width: 96,
                                      child: UiHelper().appText(
                                          "${deviceDetails.children![deviceIndex].name}",
                                          size: 16,
                                          maxLines: 1)),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("type",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      width: 96,
                                      child: UiHelper().appText(
                                          "${deviceDetails.children![deviceIndex].type}",
                                          size: 16,
                                          maxLines: 1)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("ib",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  UiHelper().appText("--", size: 18),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("depthColon",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  UiHelper().appText(
                                      deviceDetails.children![deviceIndex]
                                                  .depth !=
                                              null
                                          ? "${deviceDetails.children![deviceIndex].depth}${deviceDetails.children![deviceIndex].depthUom}"
                                          : "-",
                                      size: 16),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  UiHelper().appTextTranslation("status",
                                      context: context,
                                      color: Colors.grey,
                                      size: 16),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  UiHelper().appText(
                                      "${deviceDetails.children![deviceIndex].isActive ? "active" : "notActive"}",
                                      color: deviceDetails
                                              .children![deviceIndex].isActive
                                          ? Colors.green
                                          : Colors.red,
                                      size: 16),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),

          // Container(
          //     height: 430,
          //     color: Colors.white,
          //     margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          //     child: Column(
          //       children: [
          //         Container(
          //           padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          //           decoration: BoxDecoration(
          //               color: Colors.blueGrey[100],
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(15),
          //                   topRight: Radius.circular(15))),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                   flex: 2,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("Port", align: TextAlign.center)),
          //               Flexible(
          //                   flex: 2,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("Name", align: TextAlign.center)),
          //               Flexible(
          //                   flex: 2,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("Type", align: TextAlign.center)),
          //               Flexible(
          //                   flex: 2,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("Depth", align: TextAlign.center)),
          //               Flexible(
          //                   flex: 1,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("IB", align: TextAlign.center)),
          //               Flexible(
          //                   flex: 2,
          //                   fit: FlexFit.tight,
          //                   child: UiHelper()
          //                       .appText("Status", align: TextAlign.center)),
          //             ],
          //           ),
          //         ),
          //         for (int deviceIndex = 0;
          //             deviceIndex < deviceDetails.children!.length;
          //             deviceIndex++)
          //           GestureDetector(
          //             onTap: () {
          //               context.push(
          //                   '${Routing.viewDeviceDetails}/${deviceDetails.children![deviceIndex].id}',
          //                   extra: deviceDetails.children![deviceIndex]);
          //             },
          //             child: Column(
          //               children: [
          //                 SizedBox(
          //                   height: 10,
          //                 ),
          //                 Container(
          //                   padding: EdgeInsets.symmetric(
          //                       horizontal: 10, vertical: 10),
          //                   color: primaryFadeColor,
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Flexible(
          //                           flex: 1,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper().appText(
          //                               "${deviceIndex + 1}",
          //                               align: TextAlign.center)),
          //                       Flexible(
          //                           flex: 2,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper().appText(
          //                               "${deviceDetails.children![deviceIndex].name}",
          //                               align: TextAlign.center)),
          //                       Flexible(
          //                           flex: 2,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper().appText(
          //                               "${deviceDetails.children![deviceIndex].type}",
          //                               align: TextAlign.center)),
          //                       Flexible(
          //                           flex: 1,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper().appText(
          //                               deviceDetails.children![deviceIndex]
          //                                           .depth !=
          //                                       null
          //                                   ? "${deviceDetails.children![deviceIndex].depth}${deviceDetails.children![deviceIndex].depthUom}"
          //                                   : "-",
          //                               align: TextAlign.center)),
          //                       Flexible(
          //                           flex: 1,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper()
          //                               .appText("--", align: TextAlign.center)),
          //                       Flexible(
          //                           flex: 1,
          //                           fit: FlexFit.tight,
          //                           child: UiHelper().appText(
          //                               "${deviceDetails.children![deviceIndex].isActive ? "Active" : "Not active"}",
          //                               align: TextAlign.center)),
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           )
          //       ],
          //     )),
        ],
      ),
    );
  }

  deviceWidgetSensors() {
    final deviceDetails =
        ref.watch(deviceDetailsNotifierProvider(widget.viewableDevice.id));
    pulseVolumeController = useTextEditingController(text: "1");
    coverageAreaController = useTextEditingController(text: "100");
    deviceNameController =
        useTextEditingController(text: widget.viewableDevice.name);
    offSetController = useTextEditingController(
        text: widget.viewableDevice.offset.toString() != "null"
            ? widget.viewableDevice.offset.toString()
            : "0.0");
    multiplierController = useTextEditingController(
        text: widget.viewableDevice.multiplier.toString() != "null"
            ? widget.viewableDevice.multiplier.toString()
            : "0.0");
    refreshState(deviceDetails);
    final graph = ref.watch(sensorGraphProvider(SensorRequest(
        sensorId: selectedId, depth: int.tryParse(selectedDepth) ?? 0)));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        deviceWidget(),
        Divider(),
        Container(
          padding:
              const EdgeInsets.only(left: 15, right: 20, bottom: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 30,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: listDevices.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDevice = listDevices[index];
                              isRefresh = false;
                              for (var entries
                                  in deviceDetails.sensors!.entries) {
                                if (entries.key == selectedDevice) {
                                  listSensors = entries.value;
                                }
                              }
                              print("selectedDevice:$selectedDevice");
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: selectedDevice == listDevices[index]
                                    ? Border(
                                        bottom: BorderSide(
                                            color: primaryColor, width: 3))
                                    : null),
                            child: Row(
                              children: [
                                UiHelper().appText(
                                    UiHelper().properCase(listDevices[index]
                                        .replaceRange(
                                            0,
                                            listDevices[index]
                                                .split(" ")
                                                .first
                                                .length,
                                            "")),
                                    color: selectedDevice == listDevices[index]
                                        ? primaryColor
                                        : Colors.grey),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                          ),
                        );
                      })),
              Container(
                  height: 50,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: listSensors.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () async {
                            setState(() {
                              selectedId = listSensors[index].id;
                              selectedDepth =
                                  listSensors[index].depth.toString();
                              isRefreshSensor = true;
                              isRefresh = false;
                              print("selectedDepth:$selectedDepth");
                            });
                            SensorsDepthListView(
                                    viewableSensor: listSensors[index],
                                    viewableDevice: widget.viewableDevice,
                                    selectedDepth: selectedDepth == "null"
                                        ? ""
                                        : selectedDepth)
                                .asBottomSheet(context,
                                    title: 'selectSensorDepth'.tr(context));
                          },
                          child: Row(
                            children: [
                              Container(
                                  width: 100,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: selectedId != listSensors[index].id
                                        ? Colors.white
                                        : primaryColor,
                                    border: selectedId != listSensors[index].id
                                        ? Border.all(
                                            color: primaryColor, width: 1)
                                        : null,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: UiHelper().appText(
                                      listSensors[index].depth != null
                                          ? "${listSensors[index].depth} ${listSensors[index].depthUom}"
                                          : "Sensor",
                                      color: selectedId != listSensors[index].id
                                          ? primaryColor
                                          : Colors.white,
                                      align: TextAlign.center,
                                      weight: FontWeight.w500)),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        );
                      })),
              if (graph != null) GraphPage(cropUnitGraph: graph,graphCount: 1,),
            ],
          ),
        ),
      ],
    );
  }

  refreshState(DeviceDetailsState deviceDetails) {
    if (isRefresh) {
      if (deviceDetails.sensors != null) {
        for (var entries in deviceDetails.sensors!.entries) {
          listDevices.add(entries.key);
          selectedDevice = listDevices[0];
          listSensors = entries.value;
        }
        for (var entries in deviceDetails.sensors!.entries) {
          if (entries.key == selectedDevice) {
            listSensors = entries.value;
          }
        }
      }
    }
    if (isRefreshSensor) {
      for (var entries in deviceDetails.sensors!.entries) {
        if (entries.key == selectedDevice) {
          listSensors = entries.value;
          print("listSensors:$listSensors");
        }
      }
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedId = widget.viewableDevice.depth != null
        ? "${widget.viewableDevice.depth} ${widget.viewableDevice.depthUom}"
        : "";
    selectedDepth = widget.viewableDevice.depth != null
        ? "${widget.viewableDevice.depth}"
        : "";

    print("selectedId1:$selectedId");
  }

  @override
  Widget build(BuildContext context) {
    final deviceDetails =
        ref.watch(deviceDetailsNotifierProvider(widget.viewableDevice.id));
    final updateState =
        ref.watch(updateDeviceNotifierProvider(widget.viewableDevice.id));
    ref.listen(
        updateDeviceNotifierProvider(widget.viewableDevice.id)
            .select((value) => value.success), (previous, next) {
      if (next) {
        UiHelper()
            .showSuccessToast(context, "deviceUpdatedSuccessfully".tr(context));
        ref.invalidate(getFarmIrrigationBlocksProvider);
        ref.invalidate(devicesTreeProvider);
      }
    });

    ref.listen(
        updateDeviceNotifierProvider(widget.viewableDevice.id)
            .select((value) => value.error), (previous, next) {
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

    final graph = ref.watch(sensorGraphProvider(SensorRequest(
        sensorId: widget.viewableDevice.id,
        depth: widget.viewableDevice.depth)));

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        leadingWidth: 40,
        backgroundColor: primaryFadeColor,
        leading: IconButton(
            padding: EdgeInsets.only(left: 15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper().appText(
                  !deviceDetails.fetchingDevice
                      ? deviceDetails.deviceName
                      : widget.viewableDevice.name,
                  color: Colors.black,
                  weight: FontWeight.w500,
                  size: 20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: widget.viewableDevice.isActive
                        ? Colors.green
                        : Colors.red,
                    shape: BoxShape.circle),
              )
            ],
          ),
        ),
        elevation: 1,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  !deviceDetails.fetchingDevice
                      ? Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, bottom: 0, top: 10),
                              width: UiHelper().appWidth(context),
                              child: Row(
                                children: [
                                  UiHelper().appText(
                                      "Type: ${widget.viewableDevice.type}",
                                      color: Colors.black,
                                      weight: FontWeight.w500),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                            // thresholdWidget(deviceDetails),

                            if (deviceDetails.sensors != null)
                              deviceWidgetSensors()
                            else if (deviceDetails.children != null)
                              deviceWidgetChildren()
                            else if (deviceDetails.sensors == null &&
                                deviceDetails.children == null)
                              deviceWidget(),
                            const SizedBox(
                              height: 10,
                            ),
                            if (graph != null) GraphPage(cropUnitGraph: graph,graphCount: 1,),

                          ],
                        )
                      : Stack(
                          children: [
                            Center(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                UiHelper().progress(),
                              ],
                            )),
                          ],
                        )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (deviceDetails.geolocation?.lat != null)
                    GestureDetector(
                      onTap: () async {
                        final lat = deviceDetails.geolocation?.lat;
                        final lng = deviceDetails.geolocation?.lng;
                        if (lat != null && lng != null) {
                          if (await MapLauncher.isMapAvailable(
                                  MapType.google) ??
                              false) {
                            MapLauncher.showMarker(
                                title: deviceDetails.deviceName,
                                coords: Coords(lat, lng),
                                mapType: MapType.google);
                          } else if (await MapLauncher.isMapAvailable(
                                  MapType.apple) ??
                              false) {
                            MapLauncher.showMarker(
                                title: deviceDetails.deviceName,
                                coords: Coords(lat, lng),
                                mapType: MapType.apple);
                          } else {
                            _openMapInBrowser(lat, lng);
                          }
                        }
                      },
                      child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: primaryColor)),
                          child: SvgPicture.asset(
                            Images.maker,
                            color: primaryColor,
                            width: 12,
                          )),
                    )
                  else
                    const SizedBox(
                      width: 10,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: UiHelper().appText("Cancel",
                                color: primaryColor,
                                weight: FontWeight.w500,
                                align: TextAlign.center)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: updateState.loading
                            ? null
                            : () {
                                final valid =
                                    nameFormKey.currentState!.validate();
                                if (valid) {
                                  final updateDeviceNotifier = ref.read(
                                      updateDeviceNotifierProvider(
                                              deviceDetails.deviceId)
                                          .notifier);
                                  UpdateDeviceData updateDeviceData =
                                      UpdateDeviceData(
                                          depth: deviceDetails.depth != null
                                              ? "${deviceDetails.depth}"
                                              : "",
                                          name: deviceNameController.text,
                                          multiplier: multiplierController.text,
                                          offset: offSetController.text,
                                          irrigationBlockId: deviceDetails
                                              .selectedIrrigationBlockId,
                                          sensors: deviceDetails.sensors != null
                                              ? listSensors
                                              : []);
                                  updateDeviceNotifier
                                      .updateDevice(updateDeviceData);
                                }
                              },
                        child: Container(
                            width: 120,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: !updateState.loading
                                ? UiHelper().appTextTranslation("save",
                                    context: context,
                                    color: Colors.white,
                                    weight: FontWeight.w500,
                                    align: TextAlign.center)
                                : Stack(
                                    children: [
                                      Center(
                                          child: UiHelper().progress(size: 20)),
                                    ],
                                  )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  _openMapInBrowser(double lat, double lng) async {
    var uri =
        Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }
}

class IrrigationBlockListView extends ConsumerWidget {
  IrrigationBlockListView(
      {Key? key,
      required this.viewableDevice,
      required this.irrigationBlockName})
      : super(key: key);
  final ViewableDevice viewableDevice;
  String? irrigationBlockName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateIrrigationBlock = ref.watch(getFarmIrrigationBlocksProvider);
    final notifier =
        ref.read(deviceDetailsNotifierProvider(viewableDevice.id).notifier);

    return SelectionListView<IrrigationBlock>(
      asyncValue: stateIrrigationBlock,
      title: (item) => item.irrigationBlockName,
      onItemSelected: (items) {
        notifier.assignIrrigationBlock(items.id, items.irrigationBlockName);
        irrigationBlockName = items.irrigationBlockName;
        Navigator.pop(context);
      },
      initialSelection: (item) =>
          item ==
          (item.irrigationBlockName == irrigationBlockName ? item : null),
    );
  }
}

class SensorsDepthListView extends ConsumerWidget {
  SensorsDepthListView(
      {Key? key,
      required this.viewableSensor,
      required this.viewableDevice,
      required this.selectedDepth})
      : super(key: key);
  ViewableSensor viewableSensor;
  ViewableDevice viewableDevice;
  String selectedDepth;

  List<String> sensorsDepth = [
    "0",
    "5",
    "10",
    "15",
    "20",
    "25",
    "30",
    "40",
    "50",
    "60",
    "70",
    "80",
    "90",
    "100",
    "120",
    "140",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier =
        ref.read(deviceDetailsNotifierProvider(viewableDevice.id).notifier);

    return SelectionListView<String>(
      notAsyncData: sensorsDepth,
      isAsync: false,
      title: (item) => "${item} ${viewableSensor.depthUom}",
      onItemSelected: (item) {
        notifier.updateSensorDepth(viewableSensor.id, int.parse(item));
        Navigator.pop(context);
      },
      initialSelection: (item) =>
          item == (selectedDepth.isEmpty ? null : selectedDepth),
    );
  }
}

class DeviceDepthListView extends ConsumerWidget {
  DeviceDepthListView(
      {Key? key, required this.viewableDevice, required this.selectedDepth})
      : super(key: key);
  ViewableDevice viewableDevice;
  String selectedDepth;
  List<String> sensorsDepth = [
    "0",
    "5",
    "10",
    "15",
    "20",
    "25",
    "30",
    "40",
    "50",
    "60",
    "70",
    "80",
    "90",
    "100",
    "120",
    "140",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier =
        ref.read(deviceDetailsNotifierProvider(viewableDevice.id).notifier);

    return SelectionListView<String>(
      notAsyncData: sensorsDepth,
      isAsync: false,
      title: (item) => "${item} ${viewableDevice.depthUom}",
      onItemSelected: (item) {
        notifier.updateDeviceDepth(int.parse(item));
        Navigator.pop(context);
      },
      initialSelection: (item) =>
          item == (selectedDepth.isEmpty ? null : selectedDepth),
    );
  }
}
