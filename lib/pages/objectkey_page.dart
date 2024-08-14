import 'package:flutter/material.dart';
import 'package:ngdemo8/model/item_model.dart';

class ObjectkeyPage extends StatefulWidget {
  const ObjectkeyPage({super.key});

  @override
  State<ObjectkeyPage> createState() => _ObjectkeyPageState();
}

class _ObjectkeyPageState extends State<ObjectkeyPage> {
  late List<Item> items;

  @override
  void initState() {
    super.initState();
    items = [
      Item('Apple', Colors.red),
      Item('Banana', Colors.yellow),
      Item('Cherry', Colors.pink),
      Item('Date', Colors.brown),
      Item('Flutter', Colors.blue),
      Item('Dart', Colors.green),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Object key"),
      ),
      body: ReorderableListView(
          children: items
              .map(
                (item) =>
                ListTile(
                  key: ObjectKey(item),
                  title: Container(
                    color: item.color,
                    padding: EdgeInsets.all(10),
                    child: Text(item.name),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        items.remove(item);
                      });
                    },

                  ),
                ),
          )
              .toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex = -1;
              }
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          }),
    );
  }
}
