import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Digital, Zentralisiert, Community Driven, Einfach Besser",
          style: fonts.h1(color: colors.secondary[2]),
        ),
        const SizedBox(height: 16,),
        Text(
          "Hast du dir jemals gewünscht, dass es eine Plattform gibt, die den Einstieg in Shadowrun so einfach wie möglich macht? Eine Plattform, die den Stift und das Papier aus \" Pen and Paper\" herausnimmt? Dein Wunsch ist erfüllt. Willkommen bei Soulforger, einer Plattform, die es dir ermöglicht, Shadowrun-Kampagnen zu erstellen und an ihnen teilzunehmen, ohne den üblichen Vorbereitungsstress.",
          style: fonts.body(color: colors.secondary[3]),
        ),
      ],
    );
  }
}