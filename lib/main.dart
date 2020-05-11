import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({ Color color , int number }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text('XyloPhonE'),
          actions: <Widget>[
            // action button
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            // action button
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.orange, number:1),
              buildKey(color: Colors.red, number:2),
              buildKey(color: Colors.yellow, number:3),
              buildKey(color: Colors.green, number:4),
              buildKey(color: Colors.pink, number:5),
              buildKey(color: Colors.lightBlue, number:6),
              buildKey(color: Colors.grey, number:7),

            ],
          ),
        ),
      ),
    );
  }
}
