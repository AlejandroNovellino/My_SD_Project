import 'package:flutter/material.dart';
import 'package:my_sd_project/models/track.dart';

class TrackListElement3 extends StatelessWidget {
  const TrackListElement3(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(80, 151, 151, 151),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      trackToDisplay.imageURL,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        trackToDisplay.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        trackToDisplay.compositor,
                        style: TextStyle(
                          color: Color.fromARGB(213, 180, 180, 180),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
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
        ],
      ),
    );
  }
}
