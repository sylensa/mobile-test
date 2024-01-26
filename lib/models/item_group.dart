import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_group.freezed.dart';
part 'item_group.g.dart';

@freezed
class ItemGroup with _$ItemGroup {
  const factory ItemGroup({
    required String id,
    String? deviceUuid,
    @Default([]) List<Item> items,
  }) = _ItemGroup;

  factory ItemGroup.fromJson(Map<String, dynamic> json) =>
      _$ItemGroupFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required String id,
    required String itemGroupId,
    String? channelUuid,
    String? label,
    String? thingId,
    int? ioTypeId,
    int? ioDeviceTypeId,
    bool? isActive,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}