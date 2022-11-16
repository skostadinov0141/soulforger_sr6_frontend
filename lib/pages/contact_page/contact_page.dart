import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;
import 'package:frontend_flutter/pages/landing_page/widgets/nav_bar.dart' as nav_bar;

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      body: Stack(
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
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 320),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Impressum",
                      style: fonts.h1(color: colors.secondary[2]),
                    ),
                    const SizedBox(height: 24,),
                    SelectableText(
                      "Simeon Kostadinov",
                      style: fonts.bodyBold(),
                    ),
                    const SizedBox(height: 8,),
                    SelectableText(
                      "Am Königsberg 4",
                      style: fonts.body(),
                    ),
                    const SizedBox(height: 8,),
                    SelectableText(
                      "29525 Uelzen",
                      style: fonts.body(),
                    ),
                    const SizedBox(height: 8,),
                    SelectableText(
                      "Deutschland",
                      style: fonts.body(),
                    ),
                    const SizedBox(height: 24,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email:",
                              style: fonts.bodyBold(),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              "Telefon:",
                              style: fonts.bodyBold(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16,),
                        Column()
                      ],
                    )
                  ],
                ),
              )
            ),
          ),
        ]
      ),
    );
  }
}