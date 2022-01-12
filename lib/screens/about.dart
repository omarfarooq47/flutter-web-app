import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        child: const Text(
          'About Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
