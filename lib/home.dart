import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Styling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Text Styling',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("You clicked the button!")),
                );
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                "Click Me",
                style: TextStyle(
                  color: Colors.black, // Button text color
                  fontSize: 16,
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
