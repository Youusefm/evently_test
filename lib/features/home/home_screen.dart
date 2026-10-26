import 'package:evently_test/core/routes/routes_manager.dart';
import 'package:evently_test/features/create_event/create_event.dart';
import 'package:evently_test/features/home/tabs/favorite_tab/favorite_tab.dart';
import 'package:evently_test/features/home/tabs/home_tab/home_tab.dart';
import 'package:evently_test/features/home/tabs/profile_tab/profile_tab.dart';
import 'package:evently_test/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late AppLocalizations _appLocalizations;
  List<Widget> screens = [HomeTab(), FavoriteTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    _appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pushReplacementNamed(context, RoutesManager.createEvent);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      iconSize: 24,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },

      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? Icon(Icons.home)
              : Icon(Icons.home_outlined),
          label: _appLocalizations.home,
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? Icon(Icons.favorite_outlined)
              : Icon(Icons.favorite_outline),
          label: _appLocalizations.favorite,
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? Icon(Icons.person)
              : Icon(Icons.person_outline),
          label: _appLocalizations.profile,
        ),
      ],
    );
  }
}
