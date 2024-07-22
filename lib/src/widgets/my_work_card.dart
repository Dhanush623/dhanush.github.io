import 'package:flutter/material.dart';
import 'package:portfolio/src/models/my_work.dart';
import 'package:portfolio/src/widgets/custom_image_loader.dart';

class MyWorkCard extends StatelessWidget {
  const MyWorkCard({super.key, required this.myWork});
  final MyWork myWork;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            CustomImageLoader(
              imageUrl: myWork.image ?? '',
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(myWork.title),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  myWork.buttonName ?? "",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
