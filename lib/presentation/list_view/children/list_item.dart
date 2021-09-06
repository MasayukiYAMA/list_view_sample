import 'package:flutter/material.dart';
import 'package:list_screen_sample/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.item);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          item.description,
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
