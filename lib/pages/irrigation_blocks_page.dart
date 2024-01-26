import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/pages/irrigation_block_details.dart';
import 'package:netafim_mobile/routes.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';
import 'package:netafim_mobile/utils/helper.dart';

import '../controllers/crop_units_controller.dart';
import '../utils/hex_color_ex.dart';

class IrrigationBlocksPage extends ConsumerWidget {
  const IrrigationBlocksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blocksState = ref.watch(farmIrrigationBlocksMapProvider);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle:  false,
        leadingWidth: 30,
        backgroundColor: primaryFadeColor,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              // SvgPicture.asset(Images.irrigationBlocks,),
              // const SizedBox(
              //   width: 10,
              // ),
              UiHelper().appTextTranslation("Menu.irrigationBlock",context: context, color: Colors.black, weight: FontWeight.w500, size: 20),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: blocksState.when(
        data: (map) {
          final noCropUnitAssigned =
              ref.watch(noCropUnitIrrigationBlockGroupName);
          var entries = map.entries.toList();
          entries.sort((a, b) => a.key == noCropUnitAssigned
              ? 1
              : b.key == noCropUnitAssigned
                  ? -1
                  : 0);
          return CustomScrollView(
            slivers: [
              for (var entry in entries) ...[
                SliverToBoxAdapter(
                  child: IrrigationBlocksGroupTitle(title: entry.key),
                ),
                IrrigationBlocksGridView(blocks: entry.value),
              ],
            ],
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}

class IrrigationBlocksGridView extends ConsumerWidget {
  const IrrigationBlocksGridView({
    Key? key,
    required this.blocks,
  }) : super(key: key);

  final List<IrrigationBlock> blocks;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          mainAxisExtent: 135),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final block = blocks[index];
          final color = ref.watch(cropUnitsMapProvider)[block.cropUnitId]?.colorHexCode;
          return GestureDetector(
            onTap: () {
              UiHelper.goTo(
                  context,
                  IrrigationBlockDetails(
                    irrigationBlock: block,
                  ));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 1,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: HexColor(color),
                      width: 6,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: UiHelper().appText(
                                "${block.irrigationBlockName}",
                                size: 18,weight: FontWeight.w400,
                                maxLines: 1)),
                        // Container(
                        //   padding: const EdgeInsets.all(5),
                        //   child: SvgPicture.asset(Images.protocol,width: 20,),
                        // )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                        text: "IrrigationBlock.area".tr(context),
                        style: TextStyle(color: Colors.grey,  fontWeight: FontWeight.w400, fontSize: 16,),
                        children: [
                          TextSpan(
                            text: "${block.irrigationBlockArea!.value}"
                          )
                        ]
                      ),

                    ),
                    const SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                          text: "IrrigationBlock.flowRate".tr(context),
                          style: TextStyle(color: Colors.grey,  fontWeight: FontWeight.w400, fontSize: 16,),
                          children: [
                            TextSpan(
                                text: "${block.flowRate!.value}"
                            )
                          ]
                      ),

                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: blocks.length,
      ),
    );
  }
}

class IrrigationBlocksGroupTitle extends StatelessWidget {
  const IrrigationBlocksGroupTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            UiHelper().appText(title, size: 16,weight: FontWeight.w500),
            const SizedBox(
              width: 5,
            ),
            // const Expanded(
            //   child: Divider(
            //     color: Colors.grey,
            //     height: 1,
            //   ),
            // ),

          ],
        ),
      ],
    );
  }
}
