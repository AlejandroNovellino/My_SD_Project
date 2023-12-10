import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayer();
}

class _MusicPlayer extends State<MusicPlayer> {
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void playMusicFromUrl() async {}

  void playMusicFromAsset() async {
    const assetPath = 'assets/audio/SatoruGojoYowaiMo.mp3';
    await player.setAudioSource(AudioSource.asset(assetPath));
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                playMusicFromAsset();
              },
              child: const Text('Gojo'),
            ),
          ],
        ),
      ),
    );
  }
}
