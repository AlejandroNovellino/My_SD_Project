import 'package:flutter/material.dart';
import 'package:my_sd_project/screens/home_page.dart';
import 'package:my_sd_project/screens/just_audio_example.dart';
import 'package:my_sd_project/screens/music_player_page.dart';
import 'package:my_sd_project/screens/track_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/homepage': (context) =>
            const MyHomePage(title: 'Flutter Demo Home Page'),
        '/tracklist': (context) => const TrackList(),
        '/music-player': (context) => const MusicPlayer(),
        '/just-audio-music-player': (context) => const AudioPlayerJustAudio(),
      },
    );
  }
}
