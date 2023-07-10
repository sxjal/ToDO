import 'package:flutter/material.dart';
import 'package:todo/uiupdate.dart';
import 'package:todo/keys/keys.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Keys(),
        ),
      ),
    ),
  );
}
