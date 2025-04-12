import 'package:flutter/material.dart';
import 'gradient_container.dart';

// Entry point of the Flutter application.
void main() {
  runApp(
    const MaterialApp(
      // The home property defines the default screen of the app.
      home: Scaffold(
        // The body of the Scaffold is set to a custom GradientContainer widget.
        body: GradientContainer(
          // Passing two colors to the GradientContainer for creating a gradient background.
          Color.fromARGB(255, 111, 91, 145),
          Color.fromARGB(255, 39, 18, 75),
        ),
      ),
    ),
  );
}
