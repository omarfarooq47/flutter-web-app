import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_demo/screens/about.dart';
import 'package:flutter_web_demo/screens/animate.dart';
import 'package:flutter_web_demo/screens/home.dart';

import 'routes/route_generator.dart';
import 'routes/routes.dart';
import 'screens/app_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RendererBinding.instance?.setSemanticsEnabled(true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (_, child) => AppView(
        child: child,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/animate': (context) => const AnimateScreen()
      },
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
