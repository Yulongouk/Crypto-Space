import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/ui/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


void main() async {
  //Set Screen Portrait only
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]).then((_) {
    runApp(
      EasyLocalization(
          child: const ProviderScope(
            child: MyApp(),
          ),
          supportedLocales: const [Locale('en'), Locale('kh')],
          path: 'assets/translations'),
    );
  });
}

class MyApp extends HookConsumerWidget {
 const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      darkTheme: AppTheme.dark,
    );
  }
}