import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/src/models/experience_item.dart';
import 'package:portfolio/src/utils/app_colors.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:timelines_plus/timelines_plus.dart';

class ExperiencesContent extends StatelessWidget {
  const ExperiencesContent({super.key, required this.designations});
  final List<Designation> designations;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          color: Colors.amber,
          indicatorTheme: const IndicatorThemeData(
            position: 0,
            size: 20.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 2.5,
          ),
        ),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.after,
          itemCount: designations.length,
          contentsBuilder: (_, index) {
            Designation designation = designations[index];
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        designation.role,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Text(
                        "${DateFormat(AppConstants.dateFormat).format(designation.startDate)} - ${designation.endDate != null ? DateFormat(AppConstants.dateFormat).format(designation.endDate!) : AppConstants.current}",
                      ),
                    ],
                  ),
                  Text(
                    designations[index].mode,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    designations[index].location,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    designations[index].skills.join(", "),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            );
          },
          indicatorBuilder: (_, index) {
            return DotIndicator(
              size: 10,
              color: AppColors.blue,
            );
          },
          connectorBuilder: (_, index, ___) => SolidLineConnector(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
