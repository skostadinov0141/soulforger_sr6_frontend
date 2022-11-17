import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;

import 'feature_tracker_feature_element.dart';

class FeatureTracker extends StatelessWidget {
  const FeatureTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Row(
        children: [
          Image.asset(
            "assets/images/feature_tracker_image_1.jpg",
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(width: 64,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Feature-Tracker",
                  style: fonts.h2(color: colors.secondary[2]),
                ),
                const SizedBox(height: 16,),
                Text(
                  "Alle in Arbeit befindlichen Funktionen werden hier aufgelistet. Ziel ist es, alle aufgeführten Funktionen bis zum Ende des jeweiligen Quartals fertigzustellen. Da nur ein einziger Entwickler an dem Projekt arbeitet, können sich einige Funktionen verzögern oder ganz ausfallen.",
                  style: fonts.body(color: colors.secondary[4]),
                ),
                const SizedBox(height: 32,),
                FeatureTrackerFeatureElement(
                  content: "Die Veröffentlichung der Landing-Page. (Q4 2022)",
                  completed: true,
                ),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(
                  content: "Die Kontoerstellung ist für jeden mit einem Beta-Tester-Code eröffnet. (Q1 2023)",
                ),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(
                  content: "Das experimentelle Release der Datenbank. (Q1 2023)",
                ),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(
                  content: "Die Datenbank ist in Bezug auf das Grundregelwerk auf dem neuesten Stand. (Q1 2023)",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}