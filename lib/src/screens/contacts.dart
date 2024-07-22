import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/utils/app_constants.dart';
import 'package:portfolio/src/widgets/contact_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  void launchPhone(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchEmail(String email) async {
    String url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchGitHub(String username) async {
    String url = 'https://github.com/$username';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchLinkedIn(String username) async {
    String url = 'https://www.linkedin.com/in/$username';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ListTile(
        //   title: Text(
        //     AppConstants.contact,
        //     style: Theme.of(context).textTheme.titleLarge,
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContactIconButton(
                icon: FontAwesomeIcons.mobile,
                handle: () {
                  launchPhone(AppConstants.mobileNumber);
                },
              ),
              ContactIconButton(
                icon: FontAwesomeIcons.envelope,
                handle: () {
                  launchEmail(AppConstants.emailId);
                },
              ),
              ContactIconButton(
                icon: FontAwesomeIcons.github,
                handle: () {
                  launchGitHub(AppConstants.githubId);
                },
              ),
              ContactIconButton(
                icon: FontAwesomeIcons.linkedinIn,
                handle: () {
                  launchLinkedIn(AppConstants.linkedInId);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
