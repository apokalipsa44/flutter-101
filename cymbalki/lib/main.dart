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
          child: Container(
            child: FlatButton(
              onPressed: () {
                final audioPlayer = AudioCache();
                audioPlayer.play('note1.wav');
              },
              child: Text('play'),
            ),
          ),
        ),
      ),
    );
  }
}
