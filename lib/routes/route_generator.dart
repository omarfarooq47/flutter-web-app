import 'package:flutter/material.dart';
import 'package:flutter_web_demo/routes/routes.dart';
import 'package:flutter_web_demo/screens/about.dart';
import 'package:flutter_web_demo/screens/animate.dart';
import 'package:flutter_web_demo/screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case routeAbout:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case routeContacts:
        return MaterialPageRoute(builder: (_) => const AnimateScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}