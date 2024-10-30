import 'package:flutter/material.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // All the colors and background colors added in here are for the sake of aesthetics only.
      // But overall the initial design is kept and maintained.
      appBar: AppBar(
        title: Text(
          "Gesture and Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: (const Color.fromARGB(255, 19, 152, 181)),
      ),
      backgroundColor: (const Color.fromARGB(255, 255, 255, 255)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is supposed to be a Home Screen"),
          SizedBox(height: 20),

          // INSERT CODE BELOW
          // Uses a TextButton with a text inside “Go to About Me".
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color.fromARGB(255, 19, 152, 181),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            // Added an onPressed property navigating to the About_Me page.
            onPressed: () => Navigator.pushNamed(context, '/aboutme'),
            child: const Text(
              'Go to About Me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
