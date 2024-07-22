import 'package:flutter/material.dart';
import 'package:portfolio/src/models/menu_item.dart';
import 'package:portfolio/src/screens/contacts.dart';
import 'package:portfolio/src/screens/experience.dart';
import 'package:portfolio/src/screens/footer.dart';
import 'package:portfolio/src/screens/intro.dart';
import 'package:portfolio/src/screens/my_works.dart';
import 'package:portfolio/src/screens/skills.dart';
import 'package:portfolio/src/utils/app_constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ScrollController _scrollController = ScrollController();
  bool _isFabVisible = false;
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _myWorksKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && !_isFabVisible) {
        setState(() {
          _isFabVisible = true;
        });
      } else if (_scrollController.offset <= 100 && _isFabVisible) {
        setState(() {
          _isFabVisible = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onFabPressed() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void handleScroll(MenuItem menuItem) {
    switch (menuItem.title) {
      case AppConstants.about:
        _scrollTo(_aboutKey.currentContext!);
        break;
      case AppConstants.experience:
        _scrollTo(_experienceKey.currentContext!);
        break;
      case AppConstants.myWorks:
        _scrollTo(_myWorksKey.currentContext!);
        break;
      case AppConstants.skills:
        _scrollTo(_skillsKey.currentContext!);
        break;
      case AppConstants.contact:
        _scrollTo(_contactKey.currentContext!);
        break;
      default:
        break;
    }
  }

  void _scrollTo(BuildContext buildContext) {
    Scrollable.ensureVisible(
      buildContext,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.name),
        centerTitle: true,
        elevation: 2,
        actions: MediaQuery.of(context).size.width > 600
            ? [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: AppConstants.menuList.length,
                  itemBuilder: (context, index) {
                    MenuItem menuItem = AppConstants.menuList[index];
                    return TextButton(
                      child: Text(menuItem.title),
                      onPressed: () {
                        handleScroll(menuItem);
                      },
                    );
                  },
                ),
              ]
            : [],
      ),
      drawer: MediaQuery.of(context).size.width <= 600
          ? Drawer(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: AppConstants.menuList.length,
                itemBuilder: (context, index) {
                  MenuItem menuItem = AppConstants.menuList[index];
                  return ListTile(
                    title: Text(menuItem.title),
                    onTap: () {
                      handleScroll(menuItem);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            )
          : null,
      floatingActionButton: _isFabVisible
          ? FloatingActionButton(
              onPressed: _onFabPressed,
              child: const Icon(Icons.keyboard_arrow_up_rounded),
            )
          : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Intro(key: _aboutKey),
              Experience(key: _experienceKey),
              MyWorks(key: _myWorksKey),
              Skills(key: _skillsKey),
              Contacts(key: _contactKey),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
