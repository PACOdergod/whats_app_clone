import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/whatsapp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whats',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Whatsapp(),
    );
  }
}
