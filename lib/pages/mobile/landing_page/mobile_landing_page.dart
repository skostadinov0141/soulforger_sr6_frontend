import 'package:Soulforger.net/pages/mobile/landing_page/widgets/mobile_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

class MobileLandingPage extends StatefulWidget {
  const MobileLandingPage({super.key});

  @override
  State<MobileLandingPage> createState() => _MobileBlockerPageState();
}

class _MobileBlockerPageState extends State<MobileLandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      drawer: const MobileNavBarDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/landing_page_backgound.jpg',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
              ),
            ),
            MobileNavBar(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Digital, Zentralisiert, Community Driven...",
                      textAlign: TextAlign.center,
                      style: fonts.h1(),
                    ),
                    Text(
                      "Soulforger\n",
                      textAlign: TextAlign.center,
                      style: fonts.h1(color: colors.accents[0]),
                    )
                  ],
                )
              )
            ),
          ],
        ),
      )
    );
  }
}