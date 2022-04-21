import 'package:doremon_world/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidgit extends StatelessWidget {
  final Item item;

  const ItemWidgit({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          item.image,
          fit: BoxFit.cover,
        ),
        Text(
          item.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        Text(
          item.desc,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
          ),
        ),
        Card(
          color: Colors.blueGrey,
          elevation: 2.0,
          child: ListTile(
            leading: Image.network(
              item.image,
            ),
            title: const Text(
              "Price:",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
              ),
            ),
            trailing: Text(
              "\Rs ${item.price}",
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
