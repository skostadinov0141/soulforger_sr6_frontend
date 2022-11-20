import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:Soulforger.net/pages/contact_page/contact_page.dart';

import 'package:Soulforger.net/pages/landing_page/landing_page.dart';

import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;
import 'package:Soulforger.net/pages/not_implemented_page/not_implemented_page.dart';

void main() {
  runApp(const MyApp());
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const LandingPage(),
        '/not_implemented':(context) => const NotImplementedPage(),
        '/contact':(context) => const ContactPage(),
      },
      title: 'Soulforger',
    );
  }
}
