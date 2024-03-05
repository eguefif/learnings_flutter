import 'package:flutter/material.dart';

import 'package:test/my_app.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyApp(colors: [
            Color.fromARGB(255, 80, 7, 122),
            Color.fromARGB(255, 40, 12, 56),
        ]
        ),
      ),
    ),
  );
}
