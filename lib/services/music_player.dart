import 'package:just_audio/just_audio.dart';

class MusicPlayer {
  static AudioPlayer musicPlayer = AudioPlayer();

  MusicPlayer();

  static AudioPlayer getMusicPlayer() {
    return musicPlayer;
  }
}
