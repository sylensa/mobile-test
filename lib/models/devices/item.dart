import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    String? itemId,
    String? itemType,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}