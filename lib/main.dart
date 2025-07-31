import 'package:flutter/material.dart';

import 'package:flutter_learning/widgets/gradient_container.dart';

void main() {
  const value = 'Hello, World!';

  runApp(
    MaterialApp(
      home: Scaffold(
        body: const GradientContainer(
          value: value,
          gradientColors: const [
            Color.fromARGB(255, 43, 3, 95),
            Color.fromARGB(255, 95, 23, 195),
            Color.fromARGB(255, 105, 9, 149),
          ],
        ),
      ),
    ),
  );
}
