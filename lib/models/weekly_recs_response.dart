
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_recs_response.freezed.dart';
part 'weekly_recs_response.g.dart';

@freezed
class WeeklyRecsResponse with _$WeeklyRecsResponse {
  const factory WeeklyRecsResponse({
    required String timeStamp,
    required CropUnit cropUnit,
    @Default([]) List<Day> days,
    @Default([]) List<Week> weeks,
    Protocol? protocol,
    TotalToDate? totalToDate,
    SeasonPlan? seasonPlan,
  }) = _WeeklyRecsResponse;

  factory WeeklyRecsResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyRecsResponseFromJson(json);
}

@freezed
class CropUnit with _$CropUnit {
  const factory CropUnit({
    required String id,
    required String name,
    required String farmId,
    num? area,
    String? seasonId,
    String? measurementMethod,
  }) = _CropUnit;

  factory CropUnit.fromJson(Map<String, dynamic> json) =>
      _$CropUnitFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    required String dateInSeason,
    num? recommandationDepth,
    num? recommandationVolume,
    String? recommandationTime,
    num? rain,
    num? et,
    bool? heatWaveAlert,
    bool? frostAlert,
    num? dayInSeason,
    num? stageNumber,
    String? stageName,
    num? kc,
    num? refillPoint,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) =>
      _$DayFromJson(json);
}

@freezed
class Week with _$Week {
  const factory Week({
    int? weekNumber,
    required String startDate,
    required String endDate,
    num? weeklyIrrigation,
    num? weeklyRain,
    num? totelEto,
    num? dailyAvgEto,
    num? totelEtc,
    num? dailyAvgEtc,
    num? kc,
    num? nutN,
    num? nutP,
    num? nutK,
  }) = _Week;

  factory Week.fromJson(Map<String, dynamic> json) =>
      _$WeekFromJson(json);
}

@freezed
class Protocol with _$Protocol {
  const factory Protocol({
    required String name,
    String? seasonStatus,
    String? protocolStrategy,
    String? irrigationStrategy,
    String? seasonStartDate,
    String? seasonEndDate,
    int? durationInDays,
    int? dayInSeason,
    String? currentStageName,
    String? nextStageName,
    int? daysToNextStage,
    String? stageImg,
    @Default([]) List<String> allowedIrrigationDays,
    @Default([]) List<String> irrigationDays,
  }) = _Protocol;

  factory Protocol.fromJson(Map<String, dynamic> json) =>
      _$ProtocolFromJson(json);
}

@freezed
class TotalToDate with _$TotalToDate {
  const factory TotalToDate({
    num? actualIrrigation,
    num? totalIrrigation,
    num? actualRain,
    num? actualEto,
    num? actualEtc,
    num? actualNutN,
    num? actualNutP,
    num? actualNutK,
    num? totalNutN,
    num? totalNutP,
    num? totalNutK,
    bool? tissueSample,
    bool? soilSample,
    bool? waterSample,
  }) = _TotalToDate;

  factory TotalToDate.fromJson(Map<String, dynamic> json) =>
      _$TotalToDateFromJson(json);
}

@freezed
class SeasonPlan with _$SeasonPlan {
  const factory SeasonPlan({
    @Default([]) List<Stage> stages,
    @Default([]) List<Week> weeks,
  }) = _SeasonPlan;

  factory SeasonPlan.fromJson(Map<String, dynamic> json) =>
      _$SeasonPlanFromJson(json);
}

@freezed
class Stage with _$Stage {
  const factory Stage({
    required String name,
    required int number,
    String? image,
    String? startDate,
    String? endDate,
    num? intervalInDays,
    num? kcStart,
    num? kcEnd,
    num? durationInDays,
    num? amount,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) =>
      _$StageFromJson(json);
}