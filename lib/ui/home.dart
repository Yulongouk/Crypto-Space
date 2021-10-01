import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/provider/navigation_provider.dart';
import 'package:cryptospace/ui/screen/academy_screen.dart';
import 'package:cryptospace/ui/screen/account_screen.dart';
import 'package:cryptospace/ui/screen/analyze_screen.dart';
import 'package:cryptospace/ui/screen/home_screen.dart';
import 'package:cryptospace/ui/screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);

    return Scaffold(
      body: currentScreen(navigation.index),
      bottomNavigationBar: BottomNavigationBar(
        key: Keys.NAV_BAR,
        backgroundColor: lightDark,
        currentIndex: navigation.index,
        onTap: (index) {
          ref.read(navigationProvider.notifier).selectPage(index);
        },
        selectedItemColor: lightyellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, key: Keys.NAV_HOME,),
            label: 'Home',
            backgroundColor: lightDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, key: Keys.NAV_ANALYZE,),
            label: 'Analyze',
            backgroundColor: lightDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list, key: Keys.NAV_NEWS,),
            label: 'News',
            backgroundColor: lightDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, key: Keys.NAV_ACADEMY,),
            label: 'Academy',
            backgroundColor: lightDark,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person, key: Keys.ACCOUNT_SCREEN,),
            label: 'Account',
            backgroundColor: lightDark,
          ),
        ],
      ),
    );
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return const AnalyzeScreen();
      case 2:
        return NewsScreen();
      case 3:
        return const AcademyScreen();
      case 4:
        return const AccountScreen();
      default:
        return HomeScreen();
    }
  }
}
