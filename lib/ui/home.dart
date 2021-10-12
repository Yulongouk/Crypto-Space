import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/provider/navigation_provider.dart';
import 'package:cryptospace/ui/screen/academy_screen.dart';
import 'package:cryptospace/ui/screen/account_screen.dart';
import 'package:cryptospace/ui/screen/analyze_screen.dart';
import 'package:cryptospace/ui/screen/home_screen.dart';
import 'package:cryptospace/ui/screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  Home({Key? key}) : super(key: key);
  final bool _isLoggedIn = true;
  final Map _userObj = {};
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);
    // final login = ref.watch(loginProvider);

    return _isLoggedIn
        ? Scaffold(
            body: currentScreen(navigation.index),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: lightDark,
              currentIndex: navigation.index,
              onTap: (index) {
                ref.read(navigationProvider.notifier).selectPage(index);
              },
              selectedItemColor: lightyellow,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    key: Keys.NAV_HOME,
                  ),
                  label: 'Home',
                  backgroundColor: lightDark,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    key: Keys.NAV_ANALYZE,
                  ),
                  label: 'Analyze',
                  backgroundColor: lightDark,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.featured_play_list,
                    key: Keys.NAV_NEWS,
                  ),
                  label: 'News',
                  backgroundColor: lightDark,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                    key: Keys.NAV_ACADEMY,
                  ),
                  label: 'Academy',
                  backgroundColor: lightDark,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    key: Keys.ACCOUNT_SCREEN,
                  ),
                  label: 'Account',
                  backgroundColor: lightDark,
                ),
              ],
            ),
          )
        : Scaffold(
            body: Center(
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () async {
                  FacebookAuth.instance.login(
                      permissions: ["public_profile", "email"]).then((value) {
                    FacebookAuth.instance.getUserData().then((userData) => {
                          // login(userData,_isLoggedIn,_userObj);
                          // ref.read(loginProvider.notifier).validate()

                        });
                  });
                },
              ),
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
