import 'package:flutter/material.dart';
import 'package:flutter_web_demo/routes/routes.dart';

import 'nav_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: const [
          NavigationItem(title: 'Home', routeName: routeHome),
          NavigationItem(title: 'About', routeName: routeAbout),
          NavigationItem(title: 'Animate', routeName: routeContacts),
        ],
      ),
    );
  }
}