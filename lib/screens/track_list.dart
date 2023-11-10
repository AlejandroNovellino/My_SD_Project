import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';
import 'package:my_sd_project/widgets/track_list_element_2.dart';

class TrackList extends StatefulWidget {
  const TrackList({super.key});

  @override
  State<TrackList> createState() => _TrackList();
}

class _TrackList extends State<TrackList> {
  // Widget variables
  List<Track> tracks = [
    Track(
      'Track 1',
      'EDO',
      'https://picsum.photos/200',
      4.55,
    ),
    Track(
      'Track 2',
      'EDO',
      'https://picsum.photos/200',
      3.55,
    ),
  ];
  // Widget methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Testing list"),
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
          child: ListView(
            children: <Widget>[
              for (var track in tracks) TrackListElement2(track)
            ],
          ),
          /*ListView(
              children: <Widget>[
                for (var track in tracks) TrackListElement2(track)
              ],
            ),*/
        ),
      ),
    );
  }
}
