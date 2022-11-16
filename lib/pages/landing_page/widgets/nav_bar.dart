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
                onClick: (){
                  Navigator.pushNamed(context, '/');
                },
                label: 'START',
                id: 0,
                selected: (ModalRoute.of(context)?.settings.name == '/') ? true : false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/not_implemented');
                },
                label: 'SPIELEN',
                id: 0,
                selected: false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/not_implemented');
                },
                label: 'LEITEN',
                id: 1,
                selected: false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/not_implemented');
                },
                label: 'DATENBANK',
                id: 2,
                selected: false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/not_implemented');
                },
                label: 'PROFIL',
                id: 3,
                selected: false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/not_implemented');
                },
                label: 'COMMUNITY HUB',
                id: 4,
                selected: false,
              ),
              const SizedBox(width: 48,),
              NavBarButton(
                onClick: (){
                  Navigator.pushNamed(context, '/contact');
                },
                label: 'IMPRESSUM',
                id: 4,
                selected: (ModalRoute.of(context)?.settings.name == '/contact') ? true : false,
              ),
            ],
          )
        ),
        widget.child
      ],
    );
  }
}