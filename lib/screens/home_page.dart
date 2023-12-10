import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Widget variables

  // Widget methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hi this is the new project :D',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 30),
                FilledButton(
                  child: const Text('Go to test track list element'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/tracklist');
                  },
                ),
                FilledButton(
                  child: const Text('Go to play sound'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/music-player');
                  },
                ),
                FilledButton(
                  child: const Text('Go to play just audio music player'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/just-audio-music-player');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
