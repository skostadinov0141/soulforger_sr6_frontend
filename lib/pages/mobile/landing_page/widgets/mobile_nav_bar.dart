import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

class MobileNavBar extends StatefulWidget {

  Widget child;

  MobileNavBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Builder(
                  builder: (context) {
                    return AspectRatio(
                      aspectRatio: 1/1,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5000)
                            )
                          ),
                          alignment: Alignment.center,
                          foregroundColor: MaterialStateProperty.all(colors.secondary[2]),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(EdgeInsets.zero)
                        ),
                        child: Icon(
                          Icons.menu_rounded,
                          size: MediaQuery.of(context).size.height * 0.07,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    );
                  }
                ),
                Expanded(
                  child: Container()
                ),
                Image.asset(
                  'assets/images/soulforger_logo_100p.png',
                  width: 70,
                  height: 70,
                )
              ],
            ),
          ),
        ),
        widget.child
      ],
    );
  }
}



class MobileNavBarDrawer extends StatefulWidget {
  const MobileNavBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileNavBarDrawer> createState() => _MobileNavBarDrawerState();
}

class _MobileNavBarDrawerState extends State<MobileNavBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              title: Text(
                "NAVIGATION",
                style: fonts.h2(color:colors.secondary[0]),
              ),
            ),
            ListTile(
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "START",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "SPIELEN",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "LEITEN",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "DATENBANK",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "PROFIL",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "COMMUNITY HUB",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              title: Text(
                "IMPRESSUM",
                style: fonts.h3(color:colors.secondary[4]),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}