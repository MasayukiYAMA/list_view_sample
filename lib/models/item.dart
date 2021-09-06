import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String title,
    required String description,
  }) = _Item;
}
