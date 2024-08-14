import 'package:flutter/material.dart';

import '../widgets/get_emoji.dart';

class UniquekeyPage extends StatefulWidget {
  const UniquekeyPage({super.key});

  @override
  State<UniquekeyPage> createState() => _UniquekeyPageState();
}

class _UniquekeyPageState extends State<UniquekeyPage> {
  List<Widget> emojis = [
    GetEmoji(key: UniqueKey(), emoji: "😎"),
    GetEmoji(key: UniqueKey(), emoji: "🤠")
  ];

  swapEmoji() {
    print(UniqueKey());
    setState(() {
      emojis.insert(1, emojis.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Unique key"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: emojis,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                swapEmoji();
              },
              child: Text("Swap"),
            )
          ],
        ));
  }
}
