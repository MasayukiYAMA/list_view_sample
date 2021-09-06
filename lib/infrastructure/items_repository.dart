import 'package:list_screen_sample/models/item.dart';
import 'package:riverpod/riverpod.dart';

class ItemRepository {
  static const _DEFAULT_LENGTH = 20;
  Future<List<Item>> fetchItems({initialNum = 0, length = _DEFAULT_LENGTH}) async {
    assert(initialNum >= 0);
    return List.generate(
      length,
      (index) => Item(
        title: 'title${index + initialNum}',
        description: 'desc${index + initialNum}',
      ),
    );
  }
}

final itemRepository = Provider<ItemRepository>((ref) => ItemRepository());
