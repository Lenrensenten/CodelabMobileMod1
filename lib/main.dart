import 'package:flutter/material.dart';
import 'View/view.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App MVC',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterView(),
    );
  }
}




