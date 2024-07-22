import 'package:flutter/material.dart';
import 'package:portfolio/src/utils/app_constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Row(),
          const SizedBox(height: 10.0),
          Text(
            AppConstants.copyright + DateTime.now().year.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8.0),
          Text(
            AppConstants.builtMessage,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
