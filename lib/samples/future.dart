import 'dart:async';

import 'package:flutter/material.dart';

class FutureExample extends StatefulWidget {
  const FutureExample({super.key});

  @override
  FutureExampleState createState() => FutureExampleState();
}

class FutureExampleState extends State<FutureExample> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _startCountFuture();
  }

  void _startCountFuture() async {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _count = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Example'),
      ),
      body: Center(
        child: Text(
          'Count: $_count',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
