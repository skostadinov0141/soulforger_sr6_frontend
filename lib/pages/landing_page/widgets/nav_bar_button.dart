import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;


class NavBarButton extends StatefulWidget {
  
  String label;
  VoidCallback onClick;

  NavBarButton({
    super.key,
    this.label = 'PLACEHOLDER',
    required this.onClick
  });

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Container(height: 70,),
        Align(
          alignment: Alignment.center,
          child: Text(
            widget.label,
            style: fonts.body(color: colors.secondary[4]),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 2,
              color: colors.accents[2],
            ),
          ),
        )
      ],
    );
  }
}