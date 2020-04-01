import 'package:flutter/material.dart';
import 'package:fluttercleanboilerplate/presentation/widgets/feeds_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeedsPage(),
    );
  }
}