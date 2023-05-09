import 'package:flutter/material.dart';
import 'package:flutter_stream/samples/future.dart';
import 'package:flutter_stream/samples/stream.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stream & Future Example Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _navigate(context, const StreamExample());
              },
              child: const Text('Stream Example'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigate(context, const FutureExample());
              },
              child: const Text('Future Example'),
            )
          ],
        ),
      ),
    );
  }

  _navigate(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));
  }
}
