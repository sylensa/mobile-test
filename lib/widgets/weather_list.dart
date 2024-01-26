import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:netafim_mobile/controllers/weather_controller.dart';
import 'package:netafim_mobile/models/weather/daily_forecast.dart';
import 'package:netafim_mobile/themes/colors.dart';
import 'package:netafim_mobile/utils/helper.dart';

class DailyForecastWidget extends ConsumerWidget {
  const DailyForecastWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dailyForecastProvider);
    return state.when(
      data: (data) {
        //todo: show forecast table
        return WeatherList(
          dailyForecast: data,
        );
      },
      error: (error, stackTrace) {
        return Container(
            height: 170,
            color: Colors.white,
            child: Center(child: Text(error.toString())));
      },
      loading: () {
        return Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: UiHelper().appShadow(Colors.white24, 4, 4, 4),
            ),
            child: Center(
                child: CircularProgressIndicator(
              color: primaryColor,
            )));
      },
    );
  }
}

class WeatherList extends StatefulWidget {
  final List<DailyForecast> dailyForecast;

  const WeatherList({Key? key, required this.dailyForecast}) : super(key: key);

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  checkCurrentDate(int index) {
    if (DateTime.now().toString().split(" ").first ==
        DateTime.parse("${widget.dailyForecast[index].date}")
            .toString()
            .split(" ")
            .first) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        Container(
          height: 430,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
            boxShadow: UiHelper().appShadow(Colors.white24, 4, 4, 4),
          ),
          child: DataTable2(
              decoration: BoxDecoration(
                color: primaryFadeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              columnSpacing: 12,
              horizontalMargin: 12,
              columns: [
                DataColumn2(
                  label: Text(''),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: Text(''),
                  size: ColumnSize.S,
                ),
                DataColumn2(
                  label: UiHelper().appTextTranslation("minMax",context: context),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: UiHelper().appTextTranslation("rain",context: context),
                      size: ColumnSize.M,
                ),
                DataColumn2(
                  label: UiHelper().appTextTranslation("et",context: context),
                  size: ColumnSize.M,
                ),
              ],
              showBottomBorder: false,

              rows: List<DataRow>.generate(
                  widget.dailyForecast.length,
                  (index) => DataRow(cells: [
                        DataCell(
                          Row(
                            children: [
                              Container(
                                width: 15,
                                child: UiHelper().appText(
                                    "${DateFormat.yMMMEd().format(DateTime.parse("${widget.dailyForecast[index].date}")).split(',').first.substring(0,1).trim()}",
                                    color: checkCurrentDate(index)
                                        ? darkBlueTextColor
                                        : index == 0 ? Colors.grey : Colors.black,

                                    size: 15),
                              ),
                              UiHelper().appText(
                                  "|",
                                   color: checkCurrentDate(index)
                                      ? darkBlueTextColor
                                      : index == 0 ? Colors.grey : Colors.black,

                                  size: 15),
                              UiHelper().appText(
                                  "${DateFormat.yMMMEd().format(DateTime.parse("${widget.dailyForecast[index].date}")).split(',')[1]}",
                                  color: checkCurrentDate(index)
                                      ? darkBlueTextColor
                                      : index == 0 ? Colors.grey : Colors.black,

                                  size: 15),
                            ],
                          ),
                          onTap: () {},

                        ),
                        DataCell(
                            SvgPicture.asset("assets/icons/${widget.dailyForecast[index].icon}.svg",
                              color: checkCurrentDate(index)
                                  ? darkBlueTextColor :
                                  widget.dailyForecast[index].icon == "clear" ?
                                  Colors.black
                                  : index == 0 ? Colors.grey : Colors.black,
                              width: 20,
                            ),
                            onTap: () {}),
                        DataCell(
                            Row(
                              children: [
                                Row(
                                  children: [
                                    UiHelper().appText("${widget.dailyForecast[index].minTemp?.ceil()}",
                                        color: checkCurrentDate(index)
                                            ? darkBlueTextColor
                                            : index == 0 ? Colors.grey : Colors.black,
                                        size: 16,
                                        align: TextAlign.center),
                                  ],
                                ),
                                UiHelper().appText(" - ",
                                    color: checkCurrentDate(index)
                                        ? darkBlueTextColor
                                        : index == 0 ? Colors.grey : Colors.black,
                                    size: 14,
                                    align: TextAlign.center),
                                Row(
                                  children: [
                                    UiHelper().appText("${widget.dailyForecast[index].maxTemp?.ceil()}",
                                        color: checkCurrentDate(index)
                                            ? darkBlueTextColor
                                            : index == 0 ? Colors.grey : Colors.black,
                                        size: 16,
                                        align: TextAlign.center),
                                    widget.dailyForecast[index].temperatureUnitSymbol   != "fahrenheit" ?
                                    Container(
                                      width: 4,
                                      height: 4,
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: checkCurrentDate(index)
                                              ? darkBlueTextColor
                                              : index == 0 ? Colors.grey : Colors.black,)
                                      ),
                                    ) :
                                    UiHelper().appText("F",
                                        color: checkCurrentDate(index)
                                            ? darkBlueTextColor
                                            : index == 0 ? Colors.grey : Colors.black,
                                        size: 16,
                                        align: TextAlign.center),


                                  ],
                                ),
                              ],
                            ),
                            onTap: () {}),
                        DataCell(
                            UiHelper().appText(
                                "${widget.dailyForecast[index].accumulatedRain?.toStringAsFixed(1)}${displayUnit(widget.dailyForecast[index].accumulatedRainUnitSymbol??'')}",
                                color: checkCurrentDate(index)
                                    ? darkBlueTextColor
                                    : index == 0 ? Colors.grey : Colors.black,
                                size: 16),
                            onTap: () {}),
                        DataCell(
                            UiHelper().appText(
                                "${widget.dailyForecast[index].evapotranspiration?.toStringAsFixed(2)}${displayUnit(widget.dailyForecast[index].evapotranspirationUnitSymbol??'')}",
                                color: checkCurrentDate(index)
                                    ? darkBlueTextColor
                                    : index == 0 ? Colors.grey : Colors.black,
                                size: 16),
                            onTap: () {})
                      ])
              ),

          ),
        ),
        // Positioned(
        //   top: 0,
        //   right: 130,
        //   child: RotatedBox(
        //     quarterTurns: 4,
        //     child: ClipPath(
        //       clipper: TriangleClipper(),
        //       child: Container(
        //         color: Colors.grey[400],
        //         height: 10,
        //         width: 15,
        //       ),
        //     ),
        //   ),
        // )
        // Positioned(
        //   top: 0,
        //   right: 130,
        //   child: Container(
        //
        //     child: CustomPaint(
        //       painter: TrianglePainter(
        //         strokeColor: Colors.grey.shade400,
        //         strokeWidth: 10,
        //         paintingStyle: PaintingStyle.fill,
        //
        //       ),
        //       child: Container(
        //         color: Colors.transparent,
        //         height: 5,
        //         width: 10,
        //       ),
        //     ),
        //   ),
        // ),


      ],
    );
  }

  String displayUnit(String unit) {
    if (unit == "millimeter") {
      return "mm";
    }else if(unit == "inch"){
      return "in";
    }
    return unit;
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter({this.strokeColor = Colors.black, this.strokeWidth = 3, this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}