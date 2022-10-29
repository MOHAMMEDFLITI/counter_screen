import 'package:counter_cubit_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CounterBloc(),
    );
  }
}
