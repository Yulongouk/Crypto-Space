import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnalyzeScreen extends HookConsumerWidget {
   AnalyzeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      key: Keys.ANALYZE_SCREEN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            toolbarHeight: 65,
            title: RichText(text: TextSpan(
              style: const TextStyle(fontSize: 25, fontFamily: 'Coda'),
              children: [
                    const TextSpan(text: 'Crypto '),
                    TextSpan(text: 'Analyze', style: TextStyle(color: lightyellow))
                  ]), 
            ),
            elevation: 0,),
            Padding(padding: const EdgeInsets.fromLTRB(20, 15, 20, 0), child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our Analyzer",
                  style: TextStyle(
                      color: lightgrey,
                      fontFamily: 'OpenSans',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),], ),)
            
        ],
      ),
    );
  }
}
