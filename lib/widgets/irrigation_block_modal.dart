import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_unit_modal_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_block_modal_controller.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

import '../pages/crop_details.dart';
import '../themes/images.dart';
import '../utils/helper.dart';

class IrrigationBlockModalView extends ConsumerWidget {
  const IrrigationBlockModalView({
    Key? key,
    required this.irrigationBlock,
    required this.showController
  }) : super(key: key);
  final IrrigationBlock irrigationBlock;
  final bool showController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewableCropUnit = ref.watch(irrigationBlockModalProvider(irrigationBlock.id));
    if (viewableCropUnit == null) {
      return  Center(
        child: Text('notFound'.tr(context)),
      );
    }
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.pop(context);
        UiHelper.goTo(context, CropDetails(cropUnit:irrigationBlock.cropUnitId != null ? irrigationBlock.cropUnitId! : "", cropUnitName: irrigationBlock.irrigationBlockName,showController:showController,blockName: irrigationBlock.irrigationBlockName,));
      },
      child: SizedBox(
        height: 230,
        child: Row(
          children: [
            Container(
              width: 20,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UiHelper().appText(viewableCropUnit.name,
                                weight: FontWeight.w500,
                                color: Colors.blue,
                                size: 20),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            UiHelper().appText(viewableCropUnit.cropUnitName,
                                weight: FontWeight.w500, size: 20),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            UiHelper().appTextTranslation("IrrigationBlock.areas",context: context),
                            const SizedBox(
                              width: 5,
                            ),
                            UiHelper().appText(viewableCropUnit.area,
                                weight: FontWeight.w500),
                          ],
                        ),
                        if (viewableCropUnit.leadingSensor
                            .trim()
                            .isNotEmpty) ...[
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              UiHelper().appTextTranslation("IrrigationBlock.leadingSensor",context: context),
                              const SizedBox(
                                width: 5,
                              ),
                              UiHelper().appText(viewableCropUnit.leadingSensor,
                                  weight: FontWeight.w500),
                            ],
                          )
                        ],
                        const SizedBox(
                          height: 10,
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
                    if (false)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.red[300],
                            borderRadius: BorderRadius.circular(5)),
                        child: UiHelper()
                            .appText("Block High Flow", color: Colors.black),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (false)
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: UiHelper().appText("Manually Off",
                              color: Colors.blue, weight: FontWeight.w500),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
