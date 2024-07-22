import 'package:flutter/material.dart';
import 'package:portfolio/src/utils/app_constants.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.aboutMessage,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
