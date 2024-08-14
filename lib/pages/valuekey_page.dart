import 'package:flutter/material.dart';

class ValuekeyPage extends StatefulWidget {
  const ValuekeyPage({super.key});

  @override
  State<ValuekeyPage> createState() => _ValuekeyPageState();
}

class _ValuekeyPageState extends State<ValuekeyPage> {
  bool showFavoriteFramework = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Value key"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            if (showFavoriteFramework)
              TextField(
                key: ValueKey("framework"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Favorite Framework"),
              ),
            TextField(
              key: ValueKey("language"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Favorite Language"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  showFavoriteFramework = false;
                });
              },
              color: Colors.blue,
              child: Text("Remove Favorite Language field"),
            )
          ],
        ),
      ),
    );
  }
}
