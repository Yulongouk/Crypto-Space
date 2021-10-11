import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:cryptospace/model/analyzer_data.dart';
import 'package:cryptospace/model/open_order.dart';
import 'package:cryptospace/model/position.dart';
import 'package:cryptospace/ui/widget/analyzer_avatar.dart';
import 'package:cryptospace/ui/widget/analyzer_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyzeScreen extends StatefulWidget {
  AnalyzeScreen({Key? key}) : super(key: key);

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
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
          [
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://z-p3-scontent.fpnh5-4.fna.fbcdn.net/v/t1.6435-1/p200x200/139347562_1620138781503509_7904836790243296150_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeHwshaJOVVCMgluqhE_7WFFXwvpKzj-JyZfC-krOP4nJujPjGqW0EHIB3Qg4Uz1nPK5Sg_WkTWPI2BaLfoXI3BA&_nc_ohc=lA6d8Jk3OFAAX8_ZcL9&_nc_ht=z-p3-scontent.fpnh5-4.fna&oh=bd72db739a53dacaafccbbd95a35b090&oe=617BD02C',
        'Dy Seng'),
    Analyzer(
        AnalyzeData(
          '1',
          '0.3423',
          [
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
          [
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/s526x395/242798350_2968744236724308_2757375587570040415_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE9dG25guQxyr6Jgn0KgtT8wgTwUgzepxfCBPBSDN6nF6Xp3xSlUmUJ_lvsG1kN846O-geyX4E81JWPiuosaXZ3&_nc_ohc=mDdcgEitbOUAX9sAmG0&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=f3d3fb9fdff4f41fd7b6b7529976a4c8&oe=61807B3A',
        'Mealea Ny'),
    Analyzer(
        AnalyzeData(
          '2',
          '0.0024453',
          [
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
          [],
        ),
        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t1.6435-9/236950857_2960155570910116_3930891087429248426_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGiO5awmD9jLBqgcvso2uJ2Zw9TMfCIdv9nD1Mx8Ih2_y6GmttY7VRKraQYVdN83_EGgy6txWQ7HiFXHpQdUKgX&_nc_ohc=DgnPqtkeLG4AX_o8Xtd&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=487afd9ccf818afa6c9d9975fd2c33b4&oe=617F4A98',
        'Sitho Nathan'),
    Analyzer(
        AnalyzeData(
          '3',
          '0.0000453',
          [
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            Position('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
          [
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
            OpenOrder('0.004', '31424234', '324241.10', '0.32(+0.34%)', '0.043',
                '324544.01'),
          ],
        ),
        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t1.6435-9/234529819_1551128198567866_8669492265546861328_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE7tfyLcbOHl71qSi8Jt6Pvu_NFfyHDuNK780V_IcO40h03Veep3rC_IyI7H5rQVFC3ZQPLYyTF6_EcjVPiMK24&_nc_ohc=A64SmluEwMkAX-2fQtq&_nc_oc=AQl3oj9CYrLDIYV4VNjoHupBX7sFrNvBhIDEx48Vl4u-dbM7PoCkT0Zb9K1_-mAlFps&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=21d4dc56eb81dc20463c36b54bcd85aa&oe=6182550D',
        'Sithan')
  ];
  String parentString = 'parent String';
  int index = 0;
  int num = 0;
  int selectedIndex = 0;
  void parentChange(newString) {
    setState(() {
      parentString = newString;
    });
  }

  void dataIndex(ix) {
    setState(() {
      num = ix;
      print(index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: analyzer.map((i) {
                          index = analyzer.indexOf(i);

                          return AnalyzerAvatar(
                            analyzer: i,
                            keycalled: parentChange,
                            indexcalled: index,
                            getIndex: dataIndex,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child:
                    AnalyzerData(analyzer: analyzer[num], token: parentString)),
          ],
        ));
  }
}
