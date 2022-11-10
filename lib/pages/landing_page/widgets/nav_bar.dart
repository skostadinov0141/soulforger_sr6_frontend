import 'package:flutter/material.dart';
import 'package:frontend_flutter/pages/landing_page/widgets/nav_bar_button.dart';

import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;

class NavigationBar extends StatefulWidget {

  Widget child;

  NavigationBar({
    super.key,
    required this.child
  });

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70, 
                height: 70, 
                color: Colors.white10,
              ),
              const SizedBox(width: 16,),
              Text(
                'SOULFORGER',
                style: fonts.h3(color: colors.secondary[2]),
              ),
              Expanded(child: Container()),
              NavBarButton(
                onClick: (){},
                label: 'SPIELEN',
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){},
                label: 'LEITEN',
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){},
                label: 'DATENBANK',
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){},
                label: 'PROFIL',
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){},
                label: 'COMMUNITY HUB',
              ),
            ],
          )
        )
      ],
    );
  }
}