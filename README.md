# これはなにか

Flutter × RiverPod(flutter_hooks, hooks_riverpod)を使った
非同期でデータをロードする無限スクロールビューの実装例。

# 

```
lib/
 - infrastructure/
   - item_repository.dart
 - models/
  - item.dart
  - item.freezed.dart
 - presentation/
  - children/
    - list_item.dart
  - list_view_controller.dart
  - list_view_state.dart
  - list_view_state.freezed.dart
  - list_view.dart
 - service/
  - throttler.dart // スクロールイベントを間引く
```

# 他
なにかけばいいかわからないので一旦保留
