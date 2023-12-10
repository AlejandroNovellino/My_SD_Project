import 'package:flutter/material.dart';
//import 'package:just_audio/just_audio.dart';
//import 'package:my_sd_project/services/music_player.dart';

class MusicPlayerWidget extends StatefulWidget {
  const MusicPlayerWidget({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidget();
}

class _MusicPlayerWidget extends State<MusicPlayerWidget> {
  // Widget variables
  //AudioPlayer musicPlayer = MusicPlayer.getMusicPlayer();

  // Widget methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hi this is the new project :D',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 30),
                FilledButton(
                  child: const Text('Go to test track list element'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/tracklist');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
