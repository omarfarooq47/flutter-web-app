import 'package:flutter/material.dart';
import 'package:flutter_web_demo/routes/routes.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({Key? key, required this.title, required this.routeName})
      : super(key: key);

  final String title, routeName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navKey.currentState?.pushNamed(routeName),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
        child: Text(
          title,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
