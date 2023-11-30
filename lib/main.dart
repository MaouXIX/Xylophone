import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey(int soundNumber, Color keyColor){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: keyColor,
      ),
      onPressed: (){
        final player = AudioPlayer();
        player.play(AssetSource('note$soundNumber.wav'));
      },
      child: Text(
        '',
      ),
    ),
  );
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}