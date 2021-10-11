import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:flutter/material.dart';

class AnalyzerAvatar extends StatefulWidget {
  final Analyzer analyzer;
  final Function keycalled;
  final int indexcalled;
  final Function getIndex;
  const AnalyzerAvatar({
    Key? key,
    required this.analyzer,
    required this.keycalled,
    required this.indexcalled,
    required this.getIndex,
  }) : super(key: key);

  @override
  State<AnalyzerAvatar> createState() => _AnalyzerAvatarState();
}

class _AnalyzerAvatarState extends State<AnalyzerAvatar> {
  int index = 1;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool _hasBeenPressed = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircularProfileAvatar(
              widget.analyzer.img,
              radius: 40,
              onTap: () {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                  selectedIndex = widget.indexcalled;
                  index = selectedIndex;
                  print(_hasBeenPressed);
                  print(selectedIndex);
                  widget.keycalled(widget.analyzer.analyzeData.key);
                  widget.getIndex(selectedIndex);
                });
              },
              borderColor: ((selectedIndex == index) && _hasBeenPressed)
                  ? Colors.amberAccent
                  : Colors.white,
              borderWidth: 2,
            ),
            const SizedBox(
              height: 5,
            ),
            AutoSizeText(
              widget.analyzer.name,
              minFontSize: 10,
              maxFontSize: 15,
              style: TextStyle(
                  color: lightgrey, fontFamily: 'OpenSans', fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}
