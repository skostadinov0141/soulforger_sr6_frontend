import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

class NotImplementedPage extends StatelessWidget {
  const NotImplementedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline_rounded, color: colors.accents[4],size: 100,),
            const SizedBox(height: 24,),
            Text(
              "Hier kommst du nicht weiter...",
              style: fonts.h2(color: colors.secondary[2]),
            ),
            const SizedBox(height: 24,),
            Text(
              "Es tut mir leid, dir sagen zu müssen, dass diese Funktion noch nicht implementiert wurde. Vielleicht solltest du zu einem späteren Zeitpunkt wiederkommen?",
              style: fonts.body(color: colors.secondary[4]),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 24,vertical: 16)),
                backgroundColor: MaterialStateProperty.all(colors.accents[4])
              ),
              onPressed: (){Navigator.pop(context);}, 
              child: Text(
                "ZURÜCK ZUM START",
                style: fonts.bodyBold(color: colors.secondary[2]),
              )
            )
          ],
        ),
      ),
    );
  }
}