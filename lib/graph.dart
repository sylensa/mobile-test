import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/controllers/graph_selection_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/models/crop_unit_graphs_response.dart';
import 'package:netafim_mobile/utils/helper.dart';
import 'package:netafim_mobile/utils/hex_color_ex.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GraphPage extends StatefulHookConsumerWidget {
  final CropUnitGraph cropUnitGraph;
  final int graphCount;

  const GraphPage(
      {Key? key, required this.cropUnitGraph, required this.graphCount})
      : super(key: key);

  @override
  ConsumerState<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends ConsumerState<GraphPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  TooltipBehavior? _tooltipBehavior;

  List<ChartData> graphData = [];
  List<ChartData> dataList = [];
  List rangeValues = [];
  late ZoomPanBehavior _zoomPanBehavior;
  late SelectionBehavior _selectionBehavior;
  String header = "title";
  int index = 0;
  var format = DateFormat("d.LLL");
  int dateOffset = 0;

  getAverageStats() async {
    graphData.clear();
    dataList.clear();
    for (int i = 0;
        i < widget.cropUnitGraph.measurementData["mesaurementData"].length;
        i++) {
      print(
          "num:${double.parse(double.parse("${widget.cropUnitGraph.measurementData["mesaurementData"][i]["measurementValue"]}").toStringAsFixed(5))}");
      ChartData chartData = ChartData(
          DateTime.parse(widget.cropUnitGraph.measurementData["mesaurementData"]
              [i]["measurementDate"]),
          double.parse(double.parse(
                  "${widget.cropUnitGraph.measurementData["mesaurementData"][i]["measurementValue"]}")
              .toStringAsFixed(5)));
      graphData.add(chartData);
      rangeValues.add(double.parse(double.parse(
              "${widget.cropUnitGraph.measurementData["mesaurementData"][i]["measurementValue"]}")
          .toStringAsFixed(1)));
    }
    dataList.addAll(graphData);
    graphData.sort((a, b) {
      return a.date.compareTo(b.date);
    });
    dataList.sort((a, b) {
      return a.date.compareTo(b.date);
    });
    // for (int i = 0; i < sales.length; i++) {
    //   sales[i].year = "${DateFormat.d().format(DateTime.parse(sales[i].year.toString()))}.${DateFormat.LLL().format(DateTime.parse(sales[i].year.toString()))}";
    // }
    if (mounted) setState(() {});
  }

  String formateDate(String? dateText) {
    dateText = dateText == "null" ? "" : dateText;
    try {
      final date = DateTime.parse(dateText.toString());
      return "${DateFormat("d.LLL").format(date)}, ${DateFormat.Hm().format(date)}";
    } catch (ex) {
      return dateText.toString();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectionBehavior = SelectionBehavior(
      // Enables the selection
      enable: true,
    );
    _zoomPanBehavior = ZoomPanBehavior(
      // Enables pinch zooming
      enablePinching: true,
      enableDoubleTapZooming: true,
      enableSelectionZooming: true,
      enableMouseWheelZooming: true,
      zoomMode: ZoomMode.xy,
      enablePanning: true,
    );
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      canShowMarker: true,
      activationMode: ActivationMode.singleTap,
      // header: widget.blockName,
      format: 'point.x : point.y %',
      shouldAlwaysShow: false,
      textAlignment: ChartAlignment.near,
    );
  }

  @override
  Widget build(BuildContext context) {
    final sensor = ref.watch(
        graphSensorProvider(widget.cropUnitGraph.measurementData['ioId']));
    final irrigationBlock =
        ref.watch(irrigationBlockOfSensor(sensor?.id ?? ''));
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      canShowMarker: true,
      activationMode: ActivationMode.singleTap,
      header: "${sensor?.name} - ${irrigationBlock?.irrigationBlockName ?? ''}",
      format: 'point.x : point.y %',
      shouldAlwaysShow: false,
      textAlignment: ChartAlignment.near,
    );
    getAverageStats();
    return Container(
        height: widget.graphCount < 3 ? UiHelper().appHeight(context) / 2 : 250,
        padding: const EdgeInsets.all(0.0),
        child: Center(
            child: SfCartesianChart(
                onSelectionChanged: (arg) {},
                primaryXAxis: DateTimeAxis(
                  intervalType: DateTimeIntervalType.auto,
                  enableAutoIntervalOnZooming: true,
                  desiredIntervals: 8,
                  autoScrollingDeltaType: DateTimeIntervalType.auto,
                  axisLabelFormatter: (axisLabelRenderArgs) {
                    final dateTime = DateTime.fromMillisecondsSinceEpoch(
                        axisLabelRenderArgs.value.toInt());
                    String label = "";
                    final intervalType =
                        axisLabelRenderArgs.currentDateTimeIntervalType;
                    if (dateOffset++ % 4 == 0) {
                      label = DateFormat("d.LLL").format(dateTime);
                    } else {
                      label = axisLabelRenderArgs.text;
                    }
                    //   if (intervalType == DateTimeIntervalType.days) {
                    //   label = DateFormat("d.LLL").format(dateTime);
                    // } else if (intervalType == DateTimeIntervalType.hours) {
                    //   if (dateTime.hour == 0 ||
                    //       dateTime.hour == 6 ||
                    //       dateTime.hour == 12 ||
                    //       dateTime.hour == 18) {
                    //     label = DateFormat("d.LLL").format(dateTime);
                    //   } else {
                    //     label = DateFormat.Hm().format(dateTime);
                    //   }
                    // } else if (intervalType == DateTimeIntervalType.minutes ||
                    //     intervalType == DateTimeIntervalType.seconds) {
                    //   if (dateTime.minute % 15 == 0) {
                    //     label = DateFormat("d.LLL").format(dateTime);
                    //   } else {
                    //     label = DateFormat.Hm().format(dateTime);
                    //   }
                    // } else {
                    //   label = DateFormat("d.LLL").format(dateTime);
                    // }
                    return ChartAxisLabel(label, TextStyle(fontSize: 10));
                  },
                  // labelStyle: TextStyle(fontSize: 14)
                ),
                primaryYAxis: NumericAxis(
                  decimalPlaces: 1,
                ),

                // primaryYAxis: CategoryAxis(
                //   minimum: rangeValues.reduce((curr, next) => curr < next? curr: next),
                //   maximum: rangeValues.reduce((curr, next) => curr > next? curr: next),
                //   arrangeByIndex: true,
                //   zoomFactor: 18,
                //
                // ),
                // zoomPanBehavior: ZoomPanBehavior(
                //   // enableSelectionZooming: true,
                //   // enableMouseWheelZooming: true,
                //   maximumZoomLevel: 0.9,
                //
                //   zoomMode: ZoomMode.xy,
                //   enableDoubleTapZooming: true
                // ),
                // Chart title
                zoomPanBehavior: _zoomPanBehavior,
                title: ChartTitle(
                    text:
                        "${sensor?.name ?? ''} - ${irrigationBlock?.irrigationBlockName ?? ''}",
                    alignment: ChartAlignment.near),
                // Enable legend
                // legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: _tooltipBehavior,
                onTooltipRender: (TooltipArgs args) {
                  args.text =
                      '${sensor?.name} - ${irrigationBlock?.irrigationBlockName ?? ''}: ${graphData[args.pointIndex as int].value} %';
                  args.header = DateFormat("d.LLL, H:m")
                      .format(graphData[args.pointIndex as int].date);
                },
                enableSideBySideSeriesPlacement: false,
                series: <ChartSeries>[
              // Renders fast line chart
              if (widget.cropUnitGraph.measurementData["graphType"]
                      ?.toLowerCase() ==
                  'bar')
                ColumnSeries(
                  dataSource: graphData,
                  color: HexColor(
                      widget.cropUnitGraph.measurementData["graphColor"]),
                  selectionBehavior: _selectionBehavior,
                  xValueMapper: (datum, index) => datum.date,
                  yValueMapper: (datum, index) => datum.value,
                )
              else
                FastLineSeries<ChartData, DateTime>(
                    enableTooltip: true,
                    color: HexColor(
                        widget.cropUnitGraph.measurementData["graphColor"]),
                    dataSource: graphData,

                    // onPointTap: (chartDetails){
                    //     setState(() {
                    //       // index = chartDetails.viewportPointIndex! as int;
                    //       // format = DateFormat("d.LLL");
                    //       // print("chartDetails.pointIndex!:${chartDetails.viewportPointIndex!}");
                    //       // _tooltipBehavior =  TooltipBehavior(enable: true,canShowMarker: true ,activationMode: ActivationMode.singleTap,header: "${DateFormat("d.LLL").format(DateTime.parse(sales[chartDetails.viewportPointIndex! as int].year))}, ${DateFormat.Hm().format(DateTime.parse(sales[chartDetails.viewportPointIndex! as int].year))}"  ,format: '${sensor?.name} - ${widget.blockName}: point.y % ${chartDetails.viewportPointIndex! }',shouldAlwaysShow: false, textAlignment : ChartAlignment.near,);
                    //       UiHelper().showGraphInfo(context: context,color: widget.cropUnitGraph.measurementData["graphColor"],sensorName: "${sensor?.name} - ${irrigationBlock?.irrigationBlockName ?? ''}",chartData: sales[chartDetails.pointIndex!],);
                    //
                    //     });
                    // },

                    selectionBehavior: _selectionBehavior,
                    xValueMapper: (ChartData data, _) => data.date,
                    yValueMapper: (ChartData data, _) => data.value)
            ]
                // series: <StackedLineSeries>[
                //   StackedLineSeries<ChartData, DateTime>(
                //     // isVisibleInLegend: false,
                //
                //
                //     color: HexColor(widget.cropUnitGraph.measurementData["graphColor"]),
                //       yValueMapper: (ChartData sales, _) => sales.sales ,
                //       dataSource:  sales,
                //       xValueMapper: (ChartData sales, _) => DateTime.parse(sales.year),
                //       onPointTap: (pointDetails){
                //         UiHelper().showGraphInfo(context: context,color: widget.cropUnitGraph.measurementData["graphColor"],sensorName: widget.cropUnitGraph.graphKey,chartData: sales[pointDetails.pointIndex!],);
                //       },
                //       // Enable data label
                //       dataLabelSettings: DataLabelSettings(isVisible: false,showCumulativeValues: true,showZeroValue: true)
                //   )
                // ]
                )));
  }
}

class ChartData {
  ChartData(this.date, this.value);

  DateTime date;
  double value;
}
