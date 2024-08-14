
import 'package:flutter/material.dart';
import 'package:live_test/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Flutter Text Styling',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Experiment with text styles',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                final snackBar =
                    SnackBar(content: Text('You clicked the button!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Click Me',
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to Flutter',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )
        ],
      ),
    );
  }
}
