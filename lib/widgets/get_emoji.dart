import 'package:flutter/cupertino.dart';

//
// class GetEmoji extends StatelessWidget {
//   String emoji;
//
//   GetEmoji({required this.emoji});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       emoji,
//       style: TextStyle(fontSize: 100),
//     );
//   }
// }

class GetEmoji extends StatefulWidget {
  String emoji;

  GetEmoji({super.key, required this.emoji});

  @override
  _GetEmojiState createState() => _GetEmojiState();
}

class _GetEmojiState extends State<GetEmoji> {
  late String emoji;

  @override
  void initState() {
    super.initState();
    emoji = widget.emoji;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      emoji,
      style: const TextStyle(
        fontSize: 100,
      ),
    );
  }
}
