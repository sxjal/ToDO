import 'package:flutter/material.dart';

class ButtonUpdatesDemo extends StatefulWidget {
  const ButtonUpdatesDemo({Key? key}) : super(key: key);

  @override
  State<ButtonUpdatesDemo> createState() => _ButtonUpdatesDemoState();
}

class _ButtonUpdatesDemoState extends State<ButtonUpdatesDemo> {
  var _counter = false;
  @override
  Widget build(context) {
    print("build method for buttonupdatedemo executed");

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _counter = true;
                });
              },
              child: const Text('Yes'),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {
                setState(() {
                  _counter = false;
                });
              },
              child: const Text('No'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        if (_counter)
          const Text(
            'YES!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
