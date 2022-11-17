import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:frontend_flutter/pages/contact_page/contact_page.dart';

import 'package:frontend_flutter/pages/landing_page/landing_page.dart';

import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;
import 'package:frontend_flutter/pages/not_implemented_page/not_implemented_page.dart';

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
