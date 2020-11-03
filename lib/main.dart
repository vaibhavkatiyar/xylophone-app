import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int notenumber){
    final player=AudioCache();
    player.play('note$notenumber.wav');
  }

  Expanded buildKey({Color color, int notenumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(notenumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
           title: Center(child: Text('Xylophone',
             style: TextStyle(
             fontFamily: 'Pacifico',
             fontSize: 30.0,
             color: Colors.white,
             fontWeight: FontWeight.bold,
           ),
           ),
        ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, notenumber: 1),
              buildKey(color: Colors.indigo, notenumber: 2),
              buildKey(color: Colors.blue, notenumber: 3),
              buildKey(color: Colors.green, notenumber: 4),
              buildKey(color: Colors.yellow, notenumber: 5),
              buildKey(color: Colors.orange, notenumber: 6),
              buildKey(color: Colors.red, notenumber: 7),

              ],
          ),
        ),
      )
    );
  }
}
