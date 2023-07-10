import 'package:flutter/material.dart';
import 'package:todo/keys/keys.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TODO List'),
        ),
        body:  Center(
          child: Keys(),
        ),
      ),
    ),
  );
}
