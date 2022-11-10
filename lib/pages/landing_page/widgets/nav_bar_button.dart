import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;


class NavBarButton extends StatefulWidget {
  
  String label;
  VoidCallback onClick;
  bool selected;
  int id;

  NavBarButton({
    super.key,
    this.label = 'PLACEHOLDER',
    required this.onClick,
    this.selected = false,
    required this.id
  });

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Container(height: 70,),
        Align(
          alignment: Alignment.center,
          child: Text(
            widget.label,
            style: hovered ? fonts.body(color: colors.secondary[0]) : fonts.body(color: colors.secondary[4]),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 2,
              color: widget.selected ? colors.accents[2] : Colors.transparent,
            ),
          ),
        ),
        Positioned.fill(
          child: MouseRegion(
            onEnter: (event) => setState(() {
              hovered = true;
            }),
            onExit: (event) => setState(() {
              hovered = false;
            }),
            child: GestureDetector(
              onTap: (){widget.onClick();}
            ),
          ),
        )
      ],
    );
  }
}