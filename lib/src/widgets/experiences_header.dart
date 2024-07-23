import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/src/models/experience_item.dart';
import 'package:portfolio/src/utils/app_constants.dart';

class ExperiencesHeader extends StatelessWidget {
  const ExperiencesHeader({super.key, required this.experiences});
  final ExperienceItem experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                experiences.companyName,
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "${DateFormat(AppConstants.dateFormat).format(experiences.startDate)} - ${experiences.endDate != null ? DateFormat(AppConstants.dateFormat).format(experiences.endDate!) : AppConstants.current}",
                overflow: TextOverflow.clip,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              experiences.mode,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
