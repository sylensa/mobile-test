import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_unit_modal_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/pages/overview.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';

import '../pages/crop_details.dart';
import '../themes/images.dart';
import '../utils/helper.dart';

class CropUnitModalView extends ConsumerWidget {
  const CropUnitModalView(
      {Key? key, required this.cropUnit, required this.status,required this.blockName})
      : super(key: key);
  final DashboardCropUnit cropUnit;
  final StatusWorkspace status;
  final String blockName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewableCropUnit = ref.watch(cropUnitModalProvider(cropUnit.cropUnitId));
    if (viewableCropUnit == null) {
      return  Center(
        child: Text('norFound'.tr(context)),
      );
    }
    return GestureDetector(
      onTap: () {
        ref.read(openedCropUnitIdProvider.notifier).state = cropUnit.cropUnitId;
        Navigator.pop(context);
        UiHelper.goTo(context, CropDetails(cropUnit: cropUnit.cropUnitId,cropUnitName: cropUnit.name,showController:cropUnit.showController ,blockName: blockName,));
      },
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: status == StatusWorkspace.overview
                        ? HexColor(cropUnit.colorHexCode)
                        : status == StatusWorkspace.irrigation
                            ? cropUnit.irrigationProgram == null
                                ? Colors.transparent
                                : cropUnit
                                    .irrigationProgram!.irrigationColor.color
                            : cropUnit.cropUnitWaterBalanceColor.color,
                    width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        UiHelper().appText(
                            UiHelper().properCase(viewableCropUnit.name),
                            size: 18,
                            weight: FontWeight.w400),
                        // if (viewableCropUnit.showAlarm)
                        //   SvgPicture.asset(
                        //     Images.alert,
                        //   ),
                        Expanded(child: Container()),
                        if(cropUnit.irrigationProgram != null)
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UiHelper().appText(viewableCropUnit.nextIrrigation,
                            size: 16, weight: FontWeight.w400),
                        const SizedBox(
                          width: 10,
                        ),
                        UiHelper().appText("|"),
                        const SizedBox(
                          width: 10,
                        ),
                        UiHelper().appText(
                            cropUnit.irrigationProgram?.irrigationValue ?? '',
                            size: 16,
                            weight: FontWeight.w400),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Container()),
                        if (viewableCropUnit.showCloudIcon)
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: cropUnit.syncWithController
                                        ? darkBlueTextColor
                                        : Colors.white),
                                child: Icon(
                                  Icons.cloud,
                                  color: cropUnit.syncWithController
                                      ? Colors.white
                                      : primaryColor,
                                  size: 25,
                                  // size: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        if (viewableCropUnit.showLeafIcon)
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: cropUnit.syncWithController
                                        ? darkBlueTextColor
                                        : Colors.white),
                                child: SvgPicture.asset(
                                  Images.leaf,
                                  color: cropUnit.syncWithController
                                      ? Colors.white
                                      : primaryColor,
                                  width: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        if (viewableCropUnit.showPinIcon)
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: cropUnit.syncWithController
                                        ? darkBlueTextColor
                                        : Colors.white),
                                child: SvgPicture.asset(
                                  Images.pinned,
                                  color: cropUnit.syncWithController
                                      ? Colors.white
                                      : primaryColor,
                                  width: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        if (viewableCropUnit.showController)
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: cropUnit.syncWithController
                                        ? darkBlueTextColor
                                        : Colors.white),
                                child: SvgPicture.asset(
                                  Images.device,
                                  color: cropUnit.syncWithController
                                      ? Colors.white
                                      : primaryColor,
                                  width: 18,
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if(viewableCropUnit.showDeliveryProgress)
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            color: primaryColor,
                            backgroundColor: Colors.grey[300],
                            value: viewableCropUnit.deliveryProgress,
                            minHeight: 5,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        UiHelper().appText(viewableCropUnit.shiftsProgress,
                            weight: FontWeight.w400,
                            color: Colors.grey,
                            align: TextAlign.center,
                            size: 16),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: UiHelper().appWidth(context),
                      height: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper().appTextTranslation("CropUnit.lastIrrigation",
                            context: context,
                            weight: FontWeight.w400,
                            color: Colors.grey,
                            align: TextAlign.center,
                            size: 16),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper().appText(
                            formatValues(viewableCropUnit.lastIrrigation),
                            weight: FontWeight.w400,
                            color: Colors.black,
                            align: TextAlign.center,
                            size: 14),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            UiHelper().appTextTranslation(
                                "CropUnit.waterBalance",
                                context: context,
                                weight: FontWeight.w400,
                                color: Colors.grey,
                                align: TextAlign.center,
                                size: 16),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              Images.tooltipButton,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper().appText(
                            formatValues(viewableCropUnit.waterBalance),
                            weight: FontWeight.w400,
                            color: Colors.black,
                            align: TextAlign.left,
                            size: 16),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper().appTextTranslation("CropUnit.dosing",
                            context: context,
                            weight: FontWeight.w400,
                            color: Colors.grey,
                            align: TextAlign.center,
                            size: 16),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper().appText(viewableCropUnit.dosing,
                            weight: FontWeight.w400,
                            color: Colors.black,
                            align: TextAlign.center,
                            size: 16),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            UiHelper().appText(
                                "${viewableCropUnit.blockName} / ${viewableCropUnit.sensorName}",
                                weight: FontWeight.w400,
                                color: Colors.grey,
                                align: TextAlign.center,
                                size: 16),
                            const SizedBox(
                              width: 10,
                            ),
                            // SvgPicture.asset(Images.tooltipButton),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper().appText(viewableCropUnit.lastMeasurement,
                            weight: FontWeight.w400,
                            color: Colors.black,
                            align: TextAlign.left,
                            size: 16),
                      ],
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   children: [
                //     Container(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 10, vertical: 5),
                //       decoration: BoxDecoration(
                //           color: Colors.red[300],
                //           borderRadius: BorderRadius.circular(5)),
                //       child: UiHelper()
                //           .appText("Block High Flow", color: Colors.black),
                //     ),
                //   ],
                // )
              ],
            )),
      ),
    );
  }

  formatValues(String value) {
    print("value:$value");
    try {
      var values = double.parse(value.split(" ").first.isNotEmpty
              ? value.split(" ").first
              : "-")
          .toStringAsFixed(1);
      String metric = value.split(" ").last;
      return "${values} $metric";
    } catch (e) {
      return "-";
    }
  }
}
