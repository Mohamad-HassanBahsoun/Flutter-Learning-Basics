import 'package:flutter/material.dart';

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
          backgroundColor: Colors.purple,
          title: const Text('Umang Is Cool'),
        ),
        
        body: Container(
          child: const Text('Hi, my name is Umang Rajkarnikar'),
          margin: const EdgeInsets.all(100),
          padding: const EdgeInsets.all(10),
          color: Colors.green,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
