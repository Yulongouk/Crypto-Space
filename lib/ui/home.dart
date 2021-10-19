import 'package:cryptospace/blocs/navigation_bar/bloc/bottom_navigationbar_bloc.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/ui/screen/academy_screen.dart';
import 'package:cryptospace/ui/screen/account_screen.dart';
import 'package:cryptospace/ui/screen/analyze_screen.dart';
import 'package:cryptospace/ui/screen/home_screen.dart';
import 'package:cryptospace/ui/screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bool _isLoggedIn = true;
  final List<Widget> screens = [
    HomeScreen(),
    const AnalyzeScreen(),
    NewsScreen(),
    const AcademyScreen(),
    const AccountScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return _isLoggedIn
        ? BlocBuilder<BottomNavigationbarBloc, BottomNavigationbarState>(
            builder: (context, state) {
            if (state is HomeScreenState) {
              return _activePage(currentIndex: state.index);
            }
            if (state is AnalyzeScreenState) {
              return _activePage(currentIndex: state.index);
            }
            if (state is NewsScreenState) {
              return _activePage(currentIndex: state.index);
            }
            if (state is AcademyScreenState) {
              return _activePage(currentIndex: state.index);
            }
            if (state is AccountScreenState) {
              return _activePage(currentIndex: state.index);
            }
            return Container();
          })
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

  Scaffold _activePage({required int currentIndex}) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: PageStorage(bucket: bucket, child: screens[currentIndex]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: lightDark,
          currentIndex: currentIndex,
          onTap: (index) {
            switch(index){
              case 0: return BlocProvider.of<BottomNavigationbarBloc>(context)
                  .add(LoadHomeScreen());
              case 1: return BlocProvider.of<BottomNavigationbarBloc>(context)
                  .add(LoadAnalyzeScreen());
              case 2: return BlocProvider.of<BottomNavigationbarBloc>(context)
                  .add(LoadNewsScreen());
              case 3: return BlocProvider.of<BottomNavigationbarBloc>(context)
                  .add(LoadAcademyScreen());
              case 4: return BlocProvider.of<BottomNavigationbarBloc>(context)
                  .add(LoadAccountScreen());
              }
    
          },
          selectedItemColor: lightyellow,
          items: [
            _bottomNavItem(icon: const Icon(Icons.home), label: 'Home'),
            _bottomNavItem(icon: const Icon(Icons.person), label: 'Analyze'),
            _bottomNavItem(
                icon: const Icon(Icons.featured_play_list), label: 'News'),
            _bottomNavItem(icon: const Icon(Icons.school), label: 'Academy'),
            _bottomNavItem(icon: const Icon(Icons.person), label: 'Account')
          ]),
    );
  }
}

_bottomNavItem({required final Widget icon, required final String label}) {
  return BottomNavigationBarItem(
      icon: icon, label: label, backgroundColor: deepDark);
}


 
