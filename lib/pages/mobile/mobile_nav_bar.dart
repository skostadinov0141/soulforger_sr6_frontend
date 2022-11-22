import 'package:flutter/material.dart';
import 'package:Soulforger.net/global_properties/colors.dart' as colors;
import 'package:Soulforger.net/global_properties/font_styles.dart' as fonts;

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({
    Key? key,
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
          child: Row(
            children: [
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      foregroundColor: MaterialStateProperty.all(colors.secondary[2]),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(EdgeInsets.zero)
                    ),
                    child: Icon(
                      Icons.menu_rounded,
                      size: MediaQuery.of(context).size.height * 0.04,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
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
        )
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
    return Drawer(
      backgroundColor: colors.primary[1],
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colors.primary[2]
            ),
            child: Text(
              'NAVIGATION',
              style: fonts.h2(),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "SPIELEN",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "LEITEN",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "DATENBANK",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "PROFIL",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "COMMUNITY HUB",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            textColor: colors.secondary[2],
            title: Text(
              "IMPRESSUM",
              style: fonts.h3(),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}