import 'package:flutter/material.dart';
import 'package:portfolio/src/services/url_service.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:portfolio/src/widgets/skill_card.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          AppConstants.skills,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: AppConstants.skillList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount(context),
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (AppConstants.skillList[index].url != null) {
                UrlService().lanchUrl(AppConstants.skillList[index].url ?? "");
              }
            },
            child: SkillCard(skill: AppConstants.skillList[index]),
          ),
        ),
      ],
    );
  }

  int _crossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    int crossAxisCount = (screenWidth / 200).floor();
    return crossAxisCount > 0 ? crossAxisCount : 1;
  }
}
