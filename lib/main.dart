import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void Music(int musicnumber) {
    final player = AudioCache();
    player.play('note$musicnumber.wav');
  }

  Expanded MusicKey(MaterialColor color, int number) {
    return Expanded(
        child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      onPressed: () {
        Music(number);
      },
      child: const Text(""),
    ));
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MusicKey(Colors.red, 1),
            MusicKey(Colors.yellow, 2),
            MusicKey(Colors.blue, 3),
            MusicKey(Colors.orange, 4),
            MusicKey(Colors.green, 5),
            MusicKey(Colors.purple, 6),
            MusicKey(Colors.teal, 7),
          ],
        ),
      ),
    );
  }
}
