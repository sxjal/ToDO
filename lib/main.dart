import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tutorial'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      )));
}
