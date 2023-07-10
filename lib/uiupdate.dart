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
    print("build method for uiupdatedemo executed");
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Every flutter developer should have a basic understanding of internals?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Dso you understand how flutter updates the UI?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
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
                child: const Text('Yes'),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    _counter = !_counter;
                  });
                },
                child: const Text('No'),
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
