import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;

class FeatureTrackerFeatureElement extends StatelessWidget {

  String content;
  bool completed;

  FeatureTrackerFeatureElement({
    super.key,
    this.content = "CONTENT MISSING",
    this.completed = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            completed ? Icons.check_circle_outline_rounded : Icons.circle_outlined,
            size: 40,
            color: completed ? colors.accents[1] : colors.primary[0],
          ),
          const SizedBox(width: 16,),
          Text(
            content,
            style: fonts.bodyBold(color: colors.secondary[3]),
          )
        ],
      ),
    );
  }
}