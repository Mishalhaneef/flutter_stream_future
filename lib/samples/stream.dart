import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatefulWidget {
  const StreamExample({super.key});

  @override
  StreamExampleState createState() => StreamExampleState();
}

class StreamExampleState extends State<StreamExample> {
  final StreamController<int> _countStreamController = StreamController<int>();

  @override
  void initState() {
    super.initState();
    _startCountStream();
  }

  @override
  void dispose() {
    _countStreamController.close();
    super.dispose();
  }

  void _startCountStream() async {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(const Duration(seconds: 1));
      _countStreamController.add(i);
    }
    _countStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Example'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _countStreamController.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                'Count: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
