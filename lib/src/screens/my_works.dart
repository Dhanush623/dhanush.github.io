import 'package:flutter/material.dart';
import 'package:portfolio/src/services/url_service.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:portfolio/src/utils/screen_util.dart';
import 'package:portfolio/src/widgets/my_work_card.dart';

class MyWorks extends StatelessWidget {
  const MyWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          AppConstants.myWorks,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: AppConstants.myWorkList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ScreenUtil.crossAxisCount(context),
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (AppConstants.myWorkList[index].source != null) {
                UrlService()
                    .lanchUrl(AppConstants.myWorkList[index].source ?? "");
              }
            },
            child: MyWorkCard(
              myWork: AppConstants.myWorkList[index],
            ),
          ),
        ),
      ],
    );
  }
}
