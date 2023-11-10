import 'package:just_audio/just_audio.dart';

class MusicPlayer {
  AudioPlayer musicPlayer = AudioPlayer();

  MusicPlayer();

  AudioPlayer getMusicPlayer() {
    return musicPlayer;
  }
}
