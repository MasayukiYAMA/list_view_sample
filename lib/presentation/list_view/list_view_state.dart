import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_screen_sample/models/item.dart';

part 'list_view_state.freezed.dart';

@freezed
class ListViewState with _$ListViewState {
  const factory ListViewState({
    @Default(<Item>[]) List<Item> items,
  }) = _ListViewState;
}
