import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // const XylophoneApp({Key? key}) : super(key: key);
  Expanded keyBoard(Color color, int noteNum) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: TextButton(
          onPressed: () {
            final audio = AudioPlayer();
            audio.play(AssetSource('assets_note$noteNum.wav'));
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              keyBoard(Colors.red, 7),
              keyBoard(Colors.orange, 6),
              keyBoard(Colors.yellow, 5),
              keyBoard(Colors.green, 4),
              keyBoard(Colors.blue[200]!, 3),
              keyBoard(Colors.blue, 2),
              keyBoard(Colors.purple, 1),
            ],
          ),
        ),
      ),
    );
  }
}
