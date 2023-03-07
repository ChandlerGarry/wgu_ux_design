import 'package:flutter/material.dart';
import 'package:wgu_ux_design/screens/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'screens/dining_page.dart';
import 'screens/faq_page.dart';
import 'screens/services_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 2800,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2800, name: 'XL'),
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const HomePage(),
        '/dining': (context) => const DiningPage(),
        '/services': (context) => const ServicesPage(),
        '/faq': (context) => const FaqPage(),
      },
      initialRoute: '/home',
      home: const ServicesPage(),
    );
  }
}
