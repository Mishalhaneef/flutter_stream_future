import 'package:flutter/material.dart';
import 'package:flutter_stream_and_future_example_code/samples/future.dart';
import 'package:flutter_stream_and_future_example_code/samples/stream.dart';
import 'package:url_launcher/url_launcher.dart';

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
            ),
            TextButton(
              onPressed: () async {
                await _launchURL();
              },
              child: const Text('view github repo'),
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

  Future _launchURL() async {
    const url = 'https://github.com/Mishalhaneef/flutter_stream_future';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
