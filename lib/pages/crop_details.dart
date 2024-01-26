import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/pages/irrigation.dart';
import 'package:netafim_mobile/pages/weekly_recordings.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/themes/images.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/widgets/crop_unit_graph.dart';
import 'package:netafim_mobile/widgets/quick_actions.dart';
import 'package:netafim_mobile/widgets/tab_bar_controller.dart';

import '../controllers/crop_units_controller.dart';

class CropDetails extends ConsumerWidget {
  const CropDetails({
    Key? key,
    required this.cropUnit,
    required this.cropUnitName,
    required this.blockName,
    required this.showController,
    this.initialIndex = 0
  }) : super(key: key);
  final String cropUnit;
  final String cropUnitName;
  final String blockName;
  final int? initialIndex;
  final bool showController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final irrigationProgram = ref.watch(irrigationProgramProvider(cropUnit));
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        centerTitle:  false,
        leadingWidth: 30,
        automaticallyImplyLeading: false,
        backgroundColor: primaryFadeColor,
        // leading: IconButton(
        //     padding: EdgeInsets.symmetric(horizontal: 15),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(Icons.arrow_back_ios)
        // ),
        title: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back_ios),
                UiHelper().appText(cropUnitName, color: Colors.black, size: 20),
              ],
            )
        ),
        // actions: [
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       SvgPicture.asset(Images.infoCircle,width: 25,color: primaryColor,),
        //       SizedBox(width: 10,)
        //     ],
        //   )
        // ],
        elevation: 1,
      ),
      body: TabControlWidget(
        currentPageNumber: initialIndex,

        variant: 'square',
        tabs:  [if(showController)'quickActions', 'weeklyRecordings', 'graph'],
        tabPages: [
          if(showController)
          QuickActions(program: irrigationProgram),
          WeeklyRecording(cropUnit: cropUnit),
          CropUnitGraphWidget(cropUnitId: cropUnit,blockName:blockName),
        ],
      ),
    );
  }
}
