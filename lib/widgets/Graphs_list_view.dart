import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/graph.dart';
import 'package:netafim_mobile/themes/colors.dart';

import '../controllers/graph_controller.dart';

class GraphsListView extends ConsumerWidget {
  final String blockName;
  const GraphsListView({super.key,required this.blockName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final graphsState = ref.watch(getGraphsProvider);
    return Expanded(
      child: graphsState.when(
        data: (data) {
          if (data.isEmpty) {
            return const Center(child: Text('No data to display'));
          }
          return ListView(
            children: [
              for (final graph in data) GraphPage(cropUnitGraph: graph,graphCount:data.length)
            ],
          );
        },
        error: (error, stackTrace) => const Center(
          child: Text('Failed to get data'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(color: primaryColor),
        ),
      ),
    );
  }
}
