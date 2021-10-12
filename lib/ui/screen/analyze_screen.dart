import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:cryptospace/model/analyzer_data.dart';
import 'package:cryptospace/model/open_order.dart';
import 'package:cryptospace/model/position.dart';
import 'package:cryptospace/ui/widget/analyzer_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyzeScreen extends StatefulWidget {
  const AnalyzeScreen({Key? key}) : super(key: key);

  @override
  State<AnalyzeScreen> createState() => _AnalyzeScreenState();
}

class _AnalyzeScreenState extends State<AnalyzeScreen> {
  final List<Analyzer> analyzer = [
    Analyzer(
        AnalyzeData(
          '0',
          '0.0032314',
          [
            Position('Shiba Inu', '8.4', '31424234', '324241.10',
                '0.34(+0.34%)', '0.043', '324544.01'),
            Position('Etherum', '0.2304', '31424234', '324241.10',
                '0.52(+0.34%)', '0.043', '324544.01'),
          ],
          [
            OpenOrder('Shiba Inu','0.004', '31424234', '324241.10', '0.12(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://randomuser.me/api/portraits/men/79.jpg',
        'Dy Seng'),
    Analyzer(
        AnalyzeData(
          '1',
          '0.3423',
          [
            Position('Solona', '0.004', '31424234', '324241.10',
                '12.32(+0.34%)', '0.043', '324544.01'),
            Position('BitCoin', '0.004', '31424234', '3433241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
            Position('Shiba Inu', '0.004', '31424234', '324241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
          ],
          [
            OpenOrder('BitCoin','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('XRP','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('DogeCoin','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://randomuser.me/api/portraits/women/91.jpg',
        'Mealea Ny'),
    Analyzer(
        AnalyzeData(
          '2',
          '0.0024453',
          [
            Position('BitCoin', '0.004', '31424234', '324241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
            Position('Polygon', '0.004', '31424234', '324241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
          ],
          [],
        ),
        'https://randomuser.me/api/portraits/men/27.jpg',
        'Natan'),
    Analyzer(
        AnalyzeData(
          '3',
          '0.0000453',
          [
            Position('Etherum', '0.004', '31424234', '324241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
            Position('BitCoin', '0.004', '31424234', '324241.10',
                '0.12(+0.34%)', '0.043', '324544.01'),
            Position('Shiba Inu', '0.004', '31424234', '324241.10',
                '0.32(+0.34%)', '0.043', '324544.01'),
          ],
          [
            OpenOrder('BitCoin','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('Polkadot','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('Etherum','0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://randomuser.me/api/portraits/men/11.jpg',
        'Sithan')
  ];
  String token = 'token here';
  int index = 0;
  int num = 0;
  int selectedIndex = 0;
  void parentChange(newString) {
    setState(() {
      token = newString;
    });
  }

  void dataIndex(ix) {
    setState(() {
      num = ix;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _hasBeenPress = false;
    return Container(
        color: lightDark,
        key: Keys.ANALYZE_SCREEN,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 65,
              backgroundColor: lightDark,
              title: RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 25, fontFamily: 'Coda'),
                    children: [
                      const TextSpan(
                          text: 'Crypto ',
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: 'Analyze', style: TextStyle(color: lightyellow))
                    ]),
              ),
              elevation: 0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: lightDark,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 120,
                        child: ListView.builder(
                          itemCount: analyzer.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    CircularProfileAvatar(
                                      analyzer[index].img,
                                      radius: 40,
                                      onTap: () {
                                        _hasBeenPress = !_hasBeenPress;
                                        selectedIndex = index;
                                        dataIndex(selectedIndex);
                                      },
                                      borderColor: selectedIndex == index
                                          ? Colors.amberAccent
                                          : Colors.white,
                                      borderWidth: 2,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      analyzer[index].name,
                                      minFontSize: 10,
                                      maxFontSize: 15,
                                      style: TextStyle(
                                          color: lightgrey,
                                          fontFamily: 'OpenSans',
                                          fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            );
                          },
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child:
                    AnalyzerData(analyzer: analyzer[num], token: token, olength: analyzer[num].analyzeData.openorder.length, plength: analyzer[num].analyzeData.position.length),),
          ],
        ));
  }
}
