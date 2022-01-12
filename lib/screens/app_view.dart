import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/nav_bar.dart';

class AppView extends StatelessWidget {

  const AppView({Key? key, required this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const NavBar(),
          if(child != null)
            Expanded(child: child!)
        ],
      ),
    );
  }
}