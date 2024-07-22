import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/src/models/skill.dart';
import 'package:portfolio/src/widgets/custom_image_loader.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.skill});
  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            CustomImageLoader(
              imageUrl: skill.iconUrl,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(skill.title),
                const SizedBox(
                  height: 5,
                ),
                LinearPercentIndicator(
                  width: 100.0,
                  percent: (skill.score) / 100,
                  progressColor: Colors.blue,
                  barRadius: const Radius.circular(16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
