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
            "assets\\images\\feature_tracker_image_1.jpg",
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
                const SizedBox(height: 32,),
                FeatureTrackerFeatureElement(completed: true,),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(),
                Container(height: 1, color: colors.primary[1],),
                FeatureTrackerFeatureElement(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}