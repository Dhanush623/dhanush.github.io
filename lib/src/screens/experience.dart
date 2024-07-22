import 'package:flutter/material.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:portfolio/src/widgets/experiences_content.dart';
import 'package:portfolio/src/widgets/experiences_header.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          AppConstants.experience,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: AppConstants.experiences.length,
          itemBuilder: (context, index) {
            final data = AppConstants.experiences[index];
            return Card(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ExperiencesHeader(
                      experiences: data,
                    ),
                  ),
                  const Divider(),
                  ExperiencesContent(designations: data.designations),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
