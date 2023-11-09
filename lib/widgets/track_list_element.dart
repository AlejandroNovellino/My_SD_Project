import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';

class TrackListElement extends StatelessWidget {
  const TrackListElement(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.play_arrow,
        color: Theme.of(context).focusColor,
      ),
      title: Text(trackToDisplay.name),
      trailing: Text('${trackToDisplay.duration}'),
    );
  }
}
