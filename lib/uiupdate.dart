import 'package:flutter/material.dart';

class UiUpdatesDemo extends StatefulWidget {
  const UiUpdatesDemo({Key? key}) : super(key: key);

  @override
  State<UiUpdatesDemo> createState() => _UiUpdatesDemoState();
}

class _UiUpdatesDemoState extends State<UiUpdatesDemo> {
  var _counter = false;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Every flutter developer should have a basic understanding of rendering of widgets?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _counter = !_counter;
                  });
                },
                child: const Text('YES'),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    _counter = !_counter;
                  });
                },
                child: const Text('NO'),
              ),
            ],
          ),
          if (_counter)
            const Text(
              'YES!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
