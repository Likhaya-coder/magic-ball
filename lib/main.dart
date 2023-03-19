import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int randomImage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomImage = Random().nextInt(5) + 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset('images/ball$randomImage.png'),
            ),
          ),
        ),
      ),
    );
  }
}
