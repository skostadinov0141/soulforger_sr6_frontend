import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

import '../mobile/mobile_landing_page.dart';
import 'widgets/nav_bar.dart' as nav_bar;
import 'widgets/hero_section.dart';
import 'widgets/feature_tracker.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 1100){
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
                          image: Image.asset("assets/images/landing_page_backgound.jpg").image
                        )
                      ),
                    )
                  ),
                  nav_bar.NavigationBar(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 320),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 200,),
                              Row(
                                children: [
                                  Expanded(flex: 5, child: Container(),),
                                  const Expanded(flex: 3, child: HeroSection()),
                                ],
                              ),
                              const SizedBox(height: 640,),
                              const FeatureTracker(),
                              const SizedBox(height: 200,),
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }else{
          return MobileLandingPage();
        }
      },
    );
  }
}