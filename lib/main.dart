import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int numberSound) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$numberSound.wav'),
    );
  }

  Expanded keyBuilder({required Color color, required int numberSound}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(numberSound);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(""),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyBuilder(color: Colors.redAccent, numberSound: 1),
              keyBuilder(color: Colors.orangeAccent, numberSound: 2),
              keyBuilder(color: Colors.yellowAccent, numberSound: 3),
              keyBuilder(color: Colors.greenAccent, numberSound: 4),
              keyBuilder(color: Colors.blue, numberSound: 5),
              keyBuilder(color: Colors.indigoAccent, numberSound: 6),
              keyBuilder(color: Colors.purple, numberSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
