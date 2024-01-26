// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_recs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeeklyRecsResponse _$$_WeeklyRecsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WeeklyRecsResponse(
      timeStamp: json['timeStamp'] as String,
      cropUnit: CropUnit.fromJson(json['cropUnit'] as Map<String, dynamic>),
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      weeks: (json['weeks'] as List<dynamic>?)
              ?.map((e) => Week.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      protocol: json['protocol'] == null
          ? null
          : Protocol.fromJson(json['protocol'] as Map<String, dynamic>),
      totalToDate: json['totalToDate'] == null
          ? null
          : TotalToDate.fromJson(json['totalToDate'] as Map<String, dynamic>),
      seasonPlan: json['seasonPlan'] == null
          ? null
          : SeasonPlan.fromJson(json['seasonPlan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeeklyRecsResponseToJson(
        _$_WeeklyRecsResponse instance) =>
    <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'cropUnit': instance.cropUnit,
      'days': instance.days,
      'weeks': instance.weeks,
      'protocol': instance.protocol,
      'totalToDate': instance.totalToDate,
      'seasonPlan': instance.seasonPlan,
    };

_$_CropUnit _$$_CropUnitFromJson(Map<String, dynamic> json) => _$_CropUnit(
      id: json['id'] as String,
      name: json['name'] as String,
      farmId: json['farmId'] as String,
      area: json['area'] as num?,
      seasonId: json['seasonId'] as String?,
      measurementMethod: json['measurementMethod'] as String?,
    );

Map<String, dynamic> _$$_CropUnitToJson(_$_CropUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'farmId': instance.farmId,
      'area': instance.area,
      'seasonId': instance.seasonId,
      'measurementMethod': instance.measurementMethod,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      dateInSeason: json['dateInSeason'] as String,
      recommandationDepth: json['recommandationDepth'] as num?,
      recommandationVolume: json['recommandationVolume'] as num?,
      recommandationTime: json['recommandationTime'] as String?,
      rain: json['rain'] as num?,
      et: json['et'] as num?,
      heatWaveAlert: json['heatWaveAlert'] as bool?,
      frostAlert: json['frostAlert'] as bool?,
      dayInSeason: json['dayInSeason'] as num?,
      stageNumber: json['stageNumber'] as num?,
      stageName: json['stageName'] as String?,
      kc: json['kc'] as num?,
      refillPoint: json['refillPoint'] as num?,
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'dateInSeason': instance.dateInSeason,
      'recommandationDepth': instance.recommandationDepth,
      'recommandationVolume': instance.recommandationVolume,
      'recommandationTime': instance.recommandationTime,
      'rain': instance.rain,
      'et': instance.et,
      'heatWaveAlert': instance.heatWaveAlert,
      'frostAlert': instance.frostAlert,
      'dayInSeason': instance.dayInSeason,
      'stageNumber': instance.stageNumber,
      'stageName': instance.stageName,
      'kc': instance.kc,
      'refillPoint': instance.refillPoint,
    };

_$_Week _$$_WeekFromJson(Map<String, dynamic> json) => _$_Week(
      weekNumber: json['weekNumber'] as int?,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      weeklyIrrigation: json['weeklyIrrigation'] as num?,
      weeklyRain: json['weeklyRain'] as num?,
      totelEto: json['totelEto'] as num?,
      dailyAvgEto: json['dailyAvgEto'] as num?,
      totelEtc: json['totelEtc'] as num?,
      dailyAvgEtc: json['dailyAvgEtc'] as num?,
      kc: json['kc'] as num?,
      nutN: json['nutN'] as num?,
      nutP: json['nutP'] as num?,
      nutK: json['nutK'] as num?,
    );

Map<String, dynamic> _$$_WeekToJson(_$_Week instance) => <String, dynamic>{
      'weekNumber': instance.weekNumber,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'weeklyIrrigation': instance.weeklyIrrigation,
      'weeklyRain': instance.weeklyRain,
      'totelEto': instance.totelEto,
      'dailyAvgEto': instance.dailyAvgEto,
      'totelEtc': instance.totelEtc,
      'dailyAvgEtc': instance.dailyAvgEtc,
      'kc': instance.kc,
      'nutN': instance.nutN,
      'nutP': instance.nutP,
      'nutK': instance.nutK,
    };

_$_Protocol _$$_ProtocolFromJson(Map<String, dynamic> json) => _$_Protocol(
      name: json['name'] as String,
      seasonStatus: json['seasonStatus'] as String?,
      protocolStrategy: json['protocolStrategy'] as String?,
      irrigationStrategy: json['irrigationStrategy'] as String?,
      seasonStartDate: json['seasonStartDate'] as String?,
      seasonEndDate: json['seasonEndDate'] as String?,
      durationInDays: json['durationInDays'] as int?,
      dayInSeason: json['dayInSeason'] as int?,
      currentStageName: json['currentStageName'] as String?,
      nextStageName: json['nextStageName'] as String?,
      daysToNextStage: json['daysToNextStage'] as int?,
      stageImg: json['stageImg'] as String?,
      allowedIrrigationDays: (json['allowedIrrigationDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      irrigationDays: (json['irrigationDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProtocolToJson(_$_Protocol instance) =>
    <String, dynamic>{
      'name': instance.name,
      'seasonStatus': instance.seasonStatus,
      'protocolStrategy': instance.protocolStrategy,
      'irrigationStrategy': instance.irrigationStrategy,
      'seasonStartDate': instance.seasonStartDate,
      'seasonEndDate': instance.seasonEndDate,
      'durationInDays': instance.durationInDays,
      'dayInSeason': instance.dayInSeason,
      'currentStageName': instance.currentStageName,
      'nextStageName': instance.nextStageName,
      'daysToNextStage': instance.daysToNextStage,
      'stageImg': instance.stageImg,
      'allowedIrrigationDays': instance.allowedIrrigationDays,
      'irrigationDays': instance.irrigationDays,
    };

_$_TotalToDate _$$_TotalToDateFromJson(Map<String, dynamic> json) =>
    _$_TotalToDate(
      actualIrrigation: json['actualIrrigation'] as num?,
      totalIrrigation: json['totalIrrigation'] as num?,
      actualRain: json['actualRain'] as num?,
      actualEto: json['actualEto'] as num?,
      actualEtc: json['actualEtc'] as num?,
      actualNutN: json['actualNutN'] as num?,
      actualNutP: json['actualNutP'] as num?,
      actualNutK: json['actualNutK'] as num?,
      totalNutN: json['totalNutN'] as num?,
      totalNutP: json['totalNutP'] as num?,
      totalNutK: json['totalNutK'] as num?,
      tissueSample: json['tissueSample'] as bool?,
      soilSample: json['soilSample'] as bool?,
      waterSample: json['waterSample'] as bool?,
    );

Map<String, dynamic> _$$_TotalToDateToJson(_$_TotalToDate instance) =>
    <String, dynamic>{
      'actualIrrigation': instance.actualIrrigation,
      'totalIrrigation': instance.totalIrrigation,
      'actualRain': instance.actualRain,
      'actualEto': instance.actualEto,
      'actualEtc': instance.actualEtc,
      'actualNutN': instance.actualNutN,
      'actualNutP': instance.actualNutP,
      'actualNutK': instance.actualNutK,
      'totalNutN': instance.totalNutN,
      'totalNutP': instance.totalNutP,
      'totalNutK': instance.totalNutK,
      'tissueSample': instance.tissueSample,
      'soilSample': instance.soilSample,
      'waterSample': instance.waterSample,
    };

_$_SeasonPlan _$$_SeasonPlanFromJson(Map<String, dynamic> json) =>
    _$_SeasonPlan(
      stages: (json['stages'] as List<dynamic>?)
              ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      weeks: (json['weeks'] as List<dynamic>?)
              ?.map((e) => Week.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SeasonPlanToJson(_$_SeasonPlan instance) =>
    <String, dynamic>{
      'stages': instance.stages,
      'weeks': instance.weeks,
    };

_$_Stage _$$_StageFromJson(Map<String, dynamic> json) => _$_Stage(
      name: json['name'] as String,
      number: json['number'] as int,
      image: json['image'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      intervalInDays: json['intervalInDays'] as num?,
      kcStart: json['kcStart'] as num?,
      kcEnd: json['kcEnd'] as num?,
      durationInDays: json['durationInDays'] as num?,
      amount: json['amount'] as num?,
    );

Map<String, dynamic> _$$_StageToJson(_$_Stage instance) => <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'image': instance.image,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'intervalInDays': instance.intervalInDays,
      'kcStart': instance.kcStart,
      'kcEnd': instance.kcEnd,
      'durationInDays': instance.durationInDays,
      'amount': instance.amount,
    };
