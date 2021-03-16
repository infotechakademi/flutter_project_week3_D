import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project11/messages.dart';
import 'package:project11/stackWidgets.dart';
import 'package:project11/stepper.dart';
import 'package:project11/table.dart';
import 'package:project11/tooltip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Messages(
        title: "Flutter Uygulaması",
      ),
    );
  }
}
