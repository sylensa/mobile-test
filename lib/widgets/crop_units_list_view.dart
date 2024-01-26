import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_unit_modal_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/pages/crop_details.dart';
import 'package:netafim_mobile/pages/overview.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

import '../controllers/crop_units_controller.dart';
import '../controllers/graph_selection_controller.dart';
import '../themes/images.dart';
import '../utils/helper.dart';
import '../utils/hex_color_ex.dart';

class CropUnitsListView extends ConsumerWidget {
  const CropUnitsListView({
    Key? key,
    required this.cropUnits,
    required this.status,
  }) : super(key: key);
  final List<DashboardCropUnit> cropUnits;
  final StatusWorkspace status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (cropUnits.isEmpty) {
      return Center(child: Text('noCropUnitFound'.tr(context)));
    }
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) =>
          CropUnitListItem(cropUnit: cropUnits[index], status: status),
      separatorBuilder: (context, index) => const SizedBox(height: 4),
      itemCount: cropUnits.length,
    );
  }
}

class CropUnitListItem extends ConsumerWidget {
  const CropUnitListItem({
    Key? key,
    required this.cropUnit,
    required this.status,
  }) : super(key: key);
  final DashboardCropUnit cropUnit;
  final StatusWorkspace status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final irrigationState =
        ref.watch(cropUnitNextIrrigationStateProvider(cropUnit.cropUnitId));
    final viewableCropUnit =
        ref.watch(cropUnitModalProvider(cropUnit.cropUnitId));
    return GestureDetector(
      onTap: () {
        ref.read(openedCropUnitIdProvider.notifier).state = cropUnit.cropUnitId;
        UiHelper().showIrrigationCropDialog(context: context, cropUnit: cropUnit,status: status,blockName:viewableCropUnit!.blockName != null ? viewableCropUnit.blockName! : "");

        // UiHelper.goTo(
        //     context,
        //     CropDetails(
        //       cropUnit: cropUnit.cropUnitId,
        //       cropUnitName: cropUnit.cropUnitName,
        //       showController: cropUnit.showController,
        //     ));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
              color: status == StatusWorkspace.overview
                  ? HexColor(cropUnit.colorHexCode)
                  : status == StatusWorkspace.irrigation
                      ? cropUnit.irrigationProgram == null
                          ? Colors.transparent
                          : cropUnit.irrigationProgram!.irrigationColor.color
                      : cropUnit.cropUnitWaterBalanceColor.color,
              width: 6,
              style: BorderStyle.solid,
            )),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        cropUnit.name,
                        style: const TextStyle(fontSize: 18),
                      ),
                      // SizedBox(width: 5,),
                      // SvgPicture.asset(Images.warning,width: 18,),
                    ],
                  ),
                  if (cropUnit.irrigationProgram != null)
                    InkWell(
                      onTap: () {
                        ref.read(openedCropUnitIdProvider.notifier).state =
                            cropUnit.cropUnitId;
                        UiHelper.goTo(
                            context,
                            CropDetails(
                              cropUnit: cropUnit.cropUnitId,
                              cropUnitName: cropUnit.name,
                              blockName: viewableCropUnit!.blockName != null ? viewableCropUnit.blockName! : "",
                              showController: cropUnit.showController,
                            ));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 30,
                      ),
                    )
                ],
              ),
              const SizedBox(height: 8),
              if (!cropUnit.showController &&
                  cropUnit.leadingSensor != null &&
                  viewableCropUnit != null)
                InkWell(
                  onTap: () {
                    ref.read(openedCropUnitIdProvider.notifier).state =
                        cropUnit.cropUnitId;
                    UiHelper.goTo(
                        context,
                        CropDetails(
                          cropUnit: cropUnit.cropUnitId,
                          cropUnitName: cropUnit.name,
                          blockName: viewableCropUnit.blockName!,
                          showController: cropUnit.showController,
                          initialIndex: 2,
                        ));
                  },
                  child: Row(
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
                            width: 20,
                          ),
                          UiHelper().appText(viewableCropUnit.lastMeasurement,
                              weight: FontWeight.w400,
                              color: Colors.black,
                              align: TextAlign.left,
                              size: 16),
                          // SvgPicture.asset(Images.tooltipButton),
                        ],
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(width: 120, child: Text(irrigationState)),
                  const SizedBox(
                      height: 16,
                      child: VerticalDivider(color: Colors.black, width: 20)),
                  Expanded(
                    child:
                        Text(cropUnit.irrigationProgram?.irrigationValue ?? ''),
                  ),
                  if (cropUnit.showCloudIcon)
                    InkWell(
                      onTap: (){
                        ref.read(openedCropUnitIdProvider.notifier).state =
                            cropUnit.cropUnitId;
                        UiHelper.goTo(
                            context,
                            CropDetails(
                                cropUnitName: cropUnit.cropUnitName,
                                cropUnit: cropUnit.cropUnitId,
                                initialIndex:cropUnit.showController ?  1 : 0,
                                blockName: viewableCropUnit!.blockName != null ? viewableCropUnit.blockName! : "",
                                showController: cropUnit.showController));
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
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
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  if (cropUnit.showLeafIcon)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(openedCropUnitIdProvider.notifier).state =
                                cropUnit.cropUnitId;
                            UiHelper.goTo(
                                context,
                                CropDetails(
                                    cropUnitName: cropUnit.name,
                                    cropUnit: cropUnit.cropUnitId,
                                    initialIndex:cropUnit.showController ?  1 : 0,
                                    blockName: viewableCropUnit!.blockName != null ? viewableCropUnit.blockName! : "",
                                    showController: cropUnit.showController));
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
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
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  if (cropUnit.showPinIcon)
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
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
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  if (cropUnit.showController)
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
