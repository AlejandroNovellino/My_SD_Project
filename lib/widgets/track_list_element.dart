import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';

class TrackListElement extends StatelessWidget {
  const TrackListElement(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(80, 151, 151, 151),
      ),
      child: ListTile(
        leading: Icon(
          Icons.play_arrow,
          color: Colors.blueAccent,
        ),
        title: Text(
          trackToDisplay.name,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        trailing: Text(
          '${trackToDisplay.duration}',
          style: TextStyle(
              color: Color.fromARGB(213, 180, 180, 180), fontSize: 18),
        ),
      ),
    );
  }
}
