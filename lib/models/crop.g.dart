// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crop _$$_CropFromJson(Map<String, dynamic> json) => _$_Crop(
      cropId: json['cropId'] as int,
      cropName: json['cropName'] as String,
      cropFamilyId: json['cropFamilyId'] as int,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$_CropToJson(_$_Crop instance) => <String, dynamic>{
      'cropId': instance.cropId,
      'cropName': instance.cropName,
      'cropFamilyId': instance.cropFamilyId,
      'isActive': instance.isActive,
    };
