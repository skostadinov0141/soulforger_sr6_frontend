import 'package:flutter/material.dart';

import 'package:frontend_flutter/pages/landing_page/landing_page.dart';

import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;
import 'package:frontend_flutter/pages/not_implemented_page/not_implemented_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const LandingPage(),
        '/not_implemented':(context) => const NotImplementedPage()
      },
      title: 'Flutter Demo',
    );
  }
}