import 'package:flutter/material.dart';
import './screens/home_screen.dart';


// Main entry of the application.
void main() {
  runApp(
    // Render the LiteUp app.
    const LiteUp(),
  );
}

// Create the LiteUp widget.
class LiteUp extends StatelessWidget {
  const LiteUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // Remove the default debug banner from Flutter.
        debugShowCheckedModeBanner: false,
        // Set the homepage.
        home: HomeScreen());
  }
}
