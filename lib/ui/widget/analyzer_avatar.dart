import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnalyzerAvatar extends HookConsumerWidget {
  final Analyzer analyzer;
  AnalyzerAvatar({Key? key, required this.analyzer}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 15,),
        Column(
          children: [CircularProfileAvatar(analyzer.img),
          SizedBox(height: 5,),
          AutoSizeText(analyzer.name, minFontSize: 10, maxFontSize: 15,style: TextStyle(color: lightgrey, fontFamily: 'OpenSans', fontSize: 15 ),)],
        ),
      ],
    );
  }
}
