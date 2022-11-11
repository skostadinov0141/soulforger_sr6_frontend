import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;

import 'package:frontend_flutter/pages/landing_page/widgets/nav_bar.dart' as nav_bar;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Container(
                height: 1114,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                    image: Image.asset('assets\\images\\landing_page_backgound.jpg').image
                  )
                ),
              )
            ),
            nav_bar.NavigationBar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(height: 5000,color: Colors.white10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}