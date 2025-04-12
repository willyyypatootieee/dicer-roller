import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// Constants defining the start and end alignment for the gradient.
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// GradientContainer is a StatelessWidget that creates a container with a gradient background.
class GradientContainer extends StatelessWidget {
  // Constructor to initialize the two colors for the gradient.
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  // The two colors used in the gradient.
  final Color color1;
  final Color color2;

  @override // Overrides the build method of StatelessWidget to define the UI.
  Widget build(context) {
    return Container(
      // BoxDecoration is used to apply the gradient background.
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], // Gradient colors.
          begin: startAlignment, // Starting alignment of the gradient.
          end: endAlignment, // Ending alignment of the gradient.
        ),
      ),
      // Center widget to position the StyledText widget in the middle of the container.
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
