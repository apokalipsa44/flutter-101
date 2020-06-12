import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cymbalki());
}

class Cymbalki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pianoKey(1, Colors.red),
              pianoKey(2, Colors.greenAccent),
              pianoKey(3, Colors.pink),
              pianoKey(4, Colors.blue),
              pianoKey(5, Colors.yellow),
              pianoKey(6, Colors.purple),
              pianoKey(7, Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  void playNote(int noteNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$noteNumber.wav');
  }

  Expanded pianoKey(int noteNumber, Color keyColor) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: keyColor,
        onPressed: () {
          playNote(noteNumber);
        },
      ),
    );
  }
}
