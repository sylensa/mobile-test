import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/pages/irrigation.dart';
import 'package:netafim_mobile/pages/overview.dart';
import 'package:netafim_mobile/pages/water_balance.dart';
import 'package:netafim_mobile/widgets/tab_bar_controller.dart';

class WorkSpacePage extends ConsumerWidget {
  const WorkSpacePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showIrrigationTab = ref.watch(anyCropUnitWithControllerProvider);
    return TabControlWidget(
      variant: 'square',
      tabs: [
        if (showIrrigationTab) 'Home.irrigation',
        'Home.overview',
        'Home.waterBalance'
      ],
      tabPages: [
        if (showIrrigationTab)
          OverviewWidget(
            status: StatusWorkspace.irrigation,
          ),
        OverviewWidget(
          status: StatusWorkspace.overview,
        ),
        OverviewWidget(
          status: StatusWorkspace.waterBalance,
        ),
      ],
    );
  }
}
