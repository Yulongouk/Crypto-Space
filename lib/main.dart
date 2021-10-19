import 'package:cryptospace/blocs/navigation_bar/bloc/bottom_navigationbar_bloc.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/ui/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  //Set Screen Portrait only
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      EasyLocalization(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BlocProvider<BottomNavigationbarBloc>(create:(context)=> BottomNavigationbarBloc(), child: const Home(),),
            darkTheme: AppTheme.dark,
          ),
          supportedLocales: const [Locale('en'), Locale('kh')],
          path: 'assets/translations'),
    );
  });
}
