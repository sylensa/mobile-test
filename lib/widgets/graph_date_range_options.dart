import 'package:flutter/material.dart';

class GraphDateRangeOptions extends StatelessWidget {
  const GraphDateRangeOptions({super.key, required this.selectedDateRange});

  final List selectedDateRange;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(GraphDateRanges.sevenDays.display),
          selected: selectedDateRange.first == GraphDateRanges.sevenDays,
          onTap: () {
            Navigator.pop(context, [
              GraphDateRanges.sevenDays.display,
              GraphDateRanges.sevenDays.range,
            ]);
          },
        ),
        ListTile(
          title: Text(GraphDateRanges.fourteenDays.display),
          selected: selectedDateRange.first == GraphDateRanges.fourteenDays,
          onTap: () {
            Navigator.pop(context, [
              GraphDateRanges.fourteenDays.display,
              GraphDateRanges.fourteenDays.range,
            ]);
          },
        ),
        ListTile(
          title: Text(GraphDateRanges.thirtyDays.display),
          selected: selectedDateRange.first == GraphDateRanges.thirtyDays,
          onTap: () {
            Navigator.pop(context, [
              GraphDateRanges.thirtyDays.display,
              GraphDateRanges.thirtyDays.range,
            ]);
          },
        ),
        ListTile(
          title: Text(GraphDateRanges.custom.display),
          selected: selectedDateRange.first == GraphDateRanges.custom,
          onTap: () async {
            final result = await showDateRangePicker(
                context: context,
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      colorScheme: ColorScheme.light(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        surface: Colors.white,
                        onSurface: Colors.black,
                        secondary: Colors.blue,
                        onSecondary: Colors.white,
                      ),
                      dialogBackgroundColor: Colors.white,
                      primaryColor: Colors.blue,
                    ),
                    child: child!,
                  );
                },
                initialDateRange: DateTimeRange(
                    start: selectedDateRange[1].start,
                    end: selectedDateRange[1].end),
                firstDate: DateTime.now().subtract(const Duration(days: 200)),
                lastDate: DateTime.now());
            if (result != null) {
              Navigator.pop(context, [
                '${result.start.day}/${result.start.month} - ${result.end.day}/${result.end.month}',
                DateTimeRange(start: result.start, end: result.end),
              ]);
            }
          },
        ),
      ],
    );
  }
}

enum GraphDateRanges {
  sevenDays('7 days'),
  fourteenDays('14 days'),
  thirtyDays('30 days'),
  custom('Custom range');

  const GraphDateRanges(this.display);

  final String display;

  DateTimeRange get range {
    switch (this) {
      case GraphDateRanges.sevenDays:
        return DateTimeRange(
            start: DateTime.now().subtract(const Duration(days: 7)),
            end: DateTime.now());
      case GraphDateRanges.fourteenDays:
        return DateTimeRange(
            start: DateTime.now().subtract(const Duration(days: 14)),
            end: DateTime.now());
      case GraphDateRanges.thirtyDays:
        return DateTimeRange(
            start: DateTime.now().subtract(const Duration(days: 30)),
            end: DateTime.now());
      case GraphDateRanges.custom:
        return DateTimeRange(
            start: DateTime.now().subtract(const Duration(days: 7)),
            end: DateTime.now());
    }
  }
}
