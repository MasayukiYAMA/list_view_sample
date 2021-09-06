import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:list_screen_sample/infrastructure/items_repository.dart';
import 'package:list_screen_sample/presentation/list_view/list_view_state.dart';
import 'package:list_screen_sample/service/throttler.dart';
import 'package:riverpod/riverpod.dart';

class ListScreenController extends StateNotifier<ListViewState> {
  ListScreenController(this._itemRepository) : super(ListViewState()) {
    _init();
  }

  final ItemRepository _itemRepository;

  static const _SCROLL_BUFFER = 500;
  static const _DEBOUNCE_TIME = 300;
  final Throttler _throttler = Throttler(milliseconds: _DEBOUNCE_TIME);

  Future<void> _init() async {
    final items = await _itemRepository.fetchItems();
    state = state.copyWith(items: items);
  }

  Future<void> _fetchOnScrollBottom() async {
    final items = await _itemRepository.fetchItems(initialNum: state.items.length);
    state = state.copyWith(items: [...state.items, ...items]);
  }

  bool onScroll(ScrollUpdateNotification notification) {
    if (notification.metrics.pixels > (notification.metrics.maxScrollExtent - _SCROLL_BUFFER)) {
      _throttler.run(() async {
        await _fetchOnScrollBottom();
      });
    }
    return false;
  }
}

final listScreenController =
    StateNotifierProvider.autoDispose<ListScreenController, ListViewState>((ref) {
  final repo = ref.watch(itemRepository);
  return ListScreenController(repo);
});
