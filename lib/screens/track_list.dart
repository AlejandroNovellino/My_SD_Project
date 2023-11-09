import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';
import 'package:my_sd_project/widgets/track_list_element.dart';

class TrackList extends StatefulWidget {
  const TrackList({super.key});

  @override
  State<TrackList> createState() => _TrackList();
}

class _TrackList extends State<TrackList> {
  // Widget variables
  List<Track> tracks = [
    Track("Track 1", 4.55),
    Track("Track 2", 3.55),
  ];
  // Widget methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Testing list"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[for (var track in tracks) TrackListElement(track)],
        ),
      ),
    );
  }
}
