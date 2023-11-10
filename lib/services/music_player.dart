import 'package:just_audio/just_audio.dart';

class MusicPlayer {
  static final MusicPlayer _musicPlayer = MusicPlayer._getInstance();

  factory MusicPlayer() {
    return _musicPlayer;
  }

  MusicPlayer._getInstance();
}
