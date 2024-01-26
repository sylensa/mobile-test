import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/recs_data_source.dart';
import 'package:netafim_mobile/models/weekly_recs_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/dio_provider.dart';

part 'recs_controller.freezed.dart';

@freezed
class WeeklyRecsIdentifier with _$WeeklyRecsIdentifier {
  const factory WeeklyRecsIdentifier({
    required String cropUnitId,
    required String date, //yyyy-MM-dd format. initial should be today.
  }) = _WeeklyRecsIdentifier;
}

final weeklyRecsProvider = FutureProvider.autoDispose
    .family<WeeklyRecsResponse, WeeklyRecsIdentifier>((ref, id) async {
  final farmId = ref.watch(selectedFarmProvider)!.farmId;
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final timeZone =
      ref.watch(selectedFarmProvider)!.timeZoneInfo!.windowsTimeZone;
  final response = await RecsDataSource(dio).getRecs(
      farmId: farmId,
      cropUnitId: id.cropUnitId,
      date: id.date,
      unitSystem: unitSystem,
      timeZone: timeZone!);
  return response;
});
