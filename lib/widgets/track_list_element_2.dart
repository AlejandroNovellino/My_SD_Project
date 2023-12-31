import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';

class TrackListElement2 extends StatelessWidget {
  const TrackListElement2(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(80, 151, 151, 151),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        //visualDensity: VisualDensity.compact,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            trackToDisplay.imageURL,
            width: 50,
            height: 50,
          ),
        ),
        title: Text(
          trackToDisplay.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          trackToDisplay.compositor,
          style: TextStyle(
            color: Color.fromARGB(213, 180, 180, 180),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '${trackToDisplay.duration}',
              style: TextStyle(
                color: Color.fromARGB(213, 180, 180, 180),
              ),
            ),
            Icon(
              Icons.play_arrow,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
