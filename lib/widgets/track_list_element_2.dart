import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';

class TrackListElement2 extends StatelessWidget {
  const TrackListElement2(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(20, 255, 255, 255),
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
        title: Text(trackToDisplay.name),
        subtitle: Text(trackToDisplay.compositor),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('${trackToDisplay.duration}'),
            Icon(
              Icons.play_arrow,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ],
        ),
      ),
    );
  }
}
