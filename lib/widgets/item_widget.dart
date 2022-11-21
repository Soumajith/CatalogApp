import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desp),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.1,
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
