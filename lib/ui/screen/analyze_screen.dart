import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:cryptospace/ui/widget/analyzer_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';

class AnalyzeScreen extends HookConsumerWidget {
  AnalyzeScreen({Key? key}) : super(key: key);
  List<Analyzer> analyzer = [
    Analyzer(
        'https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t1.6435-1/p200x200/139347562_1620138781503509_7904836790243296150_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHwshaJOVVCMgluqhE_7WFFXwvpKzj-JyZfC-krOP4nJujPjGqW0EHIB3Qg4Uz1nPK5Sg_WkTWPI2BaLfoXI3BA&_nc_ohc=lA6d8Jk3OFAAX8_ZcL9&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=bd72db739a53dacaafccbbd95a35b090&oe=617BD02C',
        'Leo Gill'),
    Analyzer(
        'https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t1.6435-1/p200x200/139347562_1620138781503509_7904836790243296150_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHwshaJOVVCMgluqhE_7WFFXwvpKzj-JyZfC-krOP4nJujPjGqW0EHIB3Qg4Uz1nPK5Sg_WkTWPI2BaLfoXI3BA&_nc_ohc=lA6d8Jk3OFAAX8_ZcL9&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=bd72db739a53dacaafccbbd95a35b090&oe=617BD02C',
        'June Cha'),
    Analyzer(
        'https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t1.6435-1/p200x200/139347562_1620138781503509_7904836790243296150_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHwshaJOVVCMgluqhE_7WFFXwvpKzj-JyZfC-krOP4nJujPjGqW0EHIB3Qg4Uz1nPK5Sg_WkTWPI2BaLfoXI3BA&_nc_ohc=lA6d8Jk3OFAAX8_ZcL9&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=bd72db739a53dacaafccbbd95a35b090&oe=617BD02C',
        'Konsta Peura'),
    Analyzer(
        'https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t1.6435-1/p200x200/139347562_1620138781503509_7904836790243296150_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHwshaJOVVCMgluqhE_7WFFXwvpKzj-JyZfC-krOP4nJujPjGqW0EHIB3Qg4Uz1nPK5Sg_WkTWPI2BaLfoXI3BA&_nc_ohc=lA6d8Jk3OFAAX8_ZcL9&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=bd72db739a53dacaafccbbd95a35b090&oe=617BD02C',
        'Andreas Brixen'),
  ];
  final _controller = AdvancedSegmentController('positions');
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        key: Keys.ANALYZE_SCREEN,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 65,
              title: RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 25, fontFamily: 'Coda'),
                    children: [
                      const TextSpan(text: 'Crypto '),
                      TextSpan(
                          text: 'Analyze', style: TextStyle(color: lightyellow))
                    ]),
              ),
              elevation: 0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: Column(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: analyzer
                          .map((i) => AnalyzerAvatar(
                                analyzer: i,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: deepDark,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Value (BTC)',
                                style: TextStyle(
                                  color: lightgrey,
                                  fontFamily: 'Open Sans',
                                  fontSize: 15,
                                )),
                            const SizedBox(height: 10),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "0.00009049",
                                    style: TextStyle(
                                        color: lightgrey,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                                TextSpan(
                                  text: " = \$ 4.00",
                                  style: TextStyle(
                                      color: lightgrey.withOpacity(0.8),
                                      fontFamily: 'Open Sans',
                                      fontSize: 15),
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    AdvancedSegment(
                      controller: _controller,
                      segments: const {
                        'positions': 'Positions',
                        'open_order': 'Open Order',
                      },
                      activeStyle: TextStyle(color: Colors.black,),
                      inactiveStyle: TextStyle(color: Colors.black.withOpacity(0.5),),
                      backgroundColor: Colors.white,
                      sliderColor: lightyellow,
                      sliderOffset: 1,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
