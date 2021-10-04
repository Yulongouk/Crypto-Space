import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:cryptospace/ui/widget/analyzer_avatar.dart';
import 'package:cryptospace/ui/widget/analyzer_data.dart';
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
        'https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/s526x395/242798350_2968744236724308_2757375587570040415_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE9dG25guQxyr6Jgn0KgtT8wgTwUgzepxfCBPBSDN6nF6Xp3xSlUmUJ_lvsG1kN846O-geyX4E81JWPiuosaXZ3&_nc_ohc=mDdcgEitbOUAX9sAmG0&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=f3d3fb9fdff4f41fd7b6b7529976a4c8&oe=61807B3A',
        'June Cha'),
    Analyzer(
        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t1.6435-9/236950857_2960155570910116_3930891087429248426_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGiO5awmD9jLBqgcvso2uJ2Zw9TMfCIdv9nD1Mx8Ih2_y6GmttY7VRKraQYVdN83_EGgy6txWQ7HiFXHpQdUKgX&_nc_ohc=DgnPqtkeLG4AX_o8Xtd&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=487afd9ccf818afa6c9d9975fd2c33b4&oe=617F4A98',
        'Konsta Peura'),
    Analyzer(
        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t1.6435-9/234529819_1551128198567866_8669492265546861328_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE7tfyLcbOHl71qSi8Jt6Pvu_NFfyHDuNK780V_IcO40h03Veep3rC_IyI7H5rQVFC3ZQPLYyTF6_EcjVPiMK24&_nc_ohc=A64SmluEwMkAX-2fQtq&_nc_oc=AQl3oj9CYrLDIYV4VNjoHupBX7sFrNvBhIDEx48Vl4u-dbM7PoCkT0Zb9K1_-mAlFps&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=21d4dc56eb81dc20463c36b54bcd85aa&oe=6182550D',
        'Andreas Brixen'),
  ];

  
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
                    height: 120,
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
            
             AnalyzerData(),
          ],
        ));
  }
}
