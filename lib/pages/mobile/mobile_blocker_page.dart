import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

class MobileBlockerPage extends StatelessWidget {
  const MobileBlockerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.visibility_off_outlined,
                color: colors.accents[2],
                size: 160,
              ),
              const SizedBox(height: 24,),
              Text(
                "Es tut uns leid",
                style: fonts.h3(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24,),
              Text(
                "Soulforger ist derzeit leider nicht auf mobilen Geräten verfügbar. Bitte rufen Sie die Seite über den Desktop auf.",
                style: fonts.body(color: colors.secondary[4]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}