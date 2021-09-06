import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:list_screen_sample/presentation/list_view/children/list_item.dart';
import 'package:list_screen_sample/presentation/list_view/list_view_controller.dart';

class ListScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final items = useProvider(listScreenController.select((state) => state.items));
    return NotificationListener(
      onNotification: context.read(listScreenController.notifier).onScroll,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListItem(item);
        },
        itemCount: items.length,
      ),
    );
  }
}
