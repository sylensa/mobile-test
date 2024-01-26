import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/models/graph_selection_response.dart';

import '../controllers/graph_selection_controller.dart';
import '../themes/colors.dart';

class GraphFilterWidget extends ConsumerWidget {
  const GraphFilterWidget({
    Key? key,
    required this.cropUnitId,
  }) : super(key: key);
  final String cropUnitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectionData = ref.watch(graphSelectionDataProvider);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 40),
        primary: true,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sensors",
                  style: TextStyle(
                    color: Color(0xFF717171),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close))
              ],
            ),
          ),
          const Divider(),
          selectionData.when(
            data: (graphIrrigationBlock) {
              if (graphIrrigationBlock.isEmpty) {
                return const Center(child: Text('No graphs'));
              }
              return ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  for (final irrigationBlock in graphIrrigationBlock)
                    GraphIrrigationBlockFilter(block: irrigationBlock),
                ],
              );
            },
            error: (error, stackTrace) {
              debugPrint(stackTrace.toString());
              return const Center(child: Text('No graphs'));
            },
            loading: () {
              return const Center(
                  child: CircularProgressIndicator(
                color: primaryColor,
              ));
            },
          ),
        ],
      ),
    );
  }
}

class GraphIrrigationBlockFilter extends ConsumerWidget {
  const GraphIrrigationBlockFilter({
    Key? key,
    required this.block,
  }) : super(key: key);
  final GraphIrrigationBlock block;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8.0),
      child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          primary: false,
          children: [
            if (block.devices != null && block.devices!.isNotEmpty) ...[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //       child: Text(
              //         block.name,
              //         maxLines: 1,
              //         style: const TextStyle(
              //           color: Color(0xFF717171),
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //           overflow: TextOverflow.ellipsis,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const Divider(),
            ],
            for (final device in block.devices!)
              GraphDeviceFilter(
                device: device,
              ),
          ]),
    );
  }
}

class GraphDeviceFilter extends ConsumerStatefulWidget {
  const GraphDeviceFilter({
    Key? key,
    required this.device,
  }) : super(key: key);
  final GraphDevice device;

  @override
  ConsumerState createState() => _GraphDeviceFilterState();
}

class _GraphDeviceFilterState extends ConsumerState<GraphDeviceFilter> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    final ids = widget.device.allIds;
    final selectionState = ref.watch(
        graphSelectionNotifierProvider.select((value) => value.containsAll(ids)));
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Row(
              children: [
                Icon(_isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
                Expanded(
                  child: Text(
                    widget.device.name,
                    style: const TextStyle(
                      color: Color(0xFF717171),
                      fontSize: 16,
                    ),
                  ),
                ),
                // Checkbox(
                //     value: selectionState,
                //     onChanged: (value) {
                //       ref
                //           .read(graphSelectionNotifierProvider.notifier)
                //           .toggleGroup(ids);
                //     }),
              ],
            ),
          ),
          Visibility(
              maintainState: true,
              visible: _isExpanded,
              child: Column(
                children: [
                  if (widget.device.ios != null &&
                      widget.device.ios!.isNotEmpty)
                    ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        children: [
                          for (final sensor in widget.device.ios!)
                            GraphSensorFilter(
                              sensor: sensor,
                            ),
                        ]),
                  if (widget.device.ioGroups != null &&
                      widget.device.ioGroups!.isNotEmpty)
                  ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        for (final ioGroup in widget.device.ioGroups!)
                          GraphIoGroupFilter(
                            ioGroup: ioGroup,
                          ),
                      ]),
                ],
              )),
        ],
      ),
    );
  }
}

class GraphIoGroupFilter extends ConsumerStatefulWidget {
  const GraphIoGroupFilter({
    Key? key,
    required this.ioGroup,
  }) : super(key: key);

  final GraphIoGroup ioGroup;

  @override
  ConsumerState createState() => _GraphIoGroupFilterState();
}

class _GraphIoGroupFilterState extends ConsumerState<GraphIoGroupFilter> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    final ids = widget.ioGroup.allIds;
    final selectionState = ref.watch(graphSelectionNotifierProvider
        .select((value) => value.containsAll(widget.ioGroup.allIds)));
    return InkWell(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(_isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
                Expanded(
                  child: Text(
                    widget.ioGroup.name,
                    style: const TextStyle(
                      color: Color(0xFF717171),
                      fontSize: 15,
                    ),
                  ),
                ),
                // Checkbox(
                //     value: selectionState,
                //     onChanged: (value) {
                //       ref
                //           .read(graphSelectionNotifierProvider.notifier)
                //           .toggleGroup(ids);
                //     }),
              ],
            ),
            Visibility(
                maintainState: true,
                visible: _isExpanded,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    for (final io in widget.ioGroup.ios!)
                      GraphSensorFilter(
                        sensor: io,
                      ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class GraphSensorFilter extends ConsumerWidget {
  const GraphSensorFilter({
    Key? key,
    required this.sensor,
  }) : super(key: key);
  final GraphSensor sensor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectionState = ref.watch(deviceSelectionStateProvider(sensor.id));
    return InkWell(
      onTap: () {
        ref.read(graphSelectionNotifierProvider.notifier).toggle(sensor.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Expanded(
                child: Text(
              sensor.name,
              style:  TextStyle(fontSize: 14,color:  selectionState ? primaryColor : Colors.grey),
            )),
            Checkbox(
              value: selectionState,
              onChanged: (value) {
                ref.read(graphSelectionNotifierProvider.notifier).toggle(sensor.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
