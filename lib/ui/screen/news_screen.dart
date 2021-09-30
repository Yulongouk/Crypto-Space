import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/ui/widget/carousel_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsScreen extends HookConsumerWidget {
  NewsScreen({Key? key}) : super(key: key);
  final List<String> imgList = [
    ('https://www.nasdaq.com/sites/acquia.prod/files/styles/1370x700/public/bitcoin_magazine/img_6302.png?h=33ada183&itok=WEoWWtne'),
    'https://www.trustnodes.com/wp-content/uploads/2021/09/xbtg-pactual-office.jpg.pagespeed.ic.mTk79KSrnI.webp',
    'https://images.cointelegraph.com/images/638_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDkvYzM1MjFlNDktOWYwYi00Y2VlLWIwZGYtMWU1YmEzYzI0MGY0LmpwZw==.jpg',
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      key: Keys.NEWS_SCREEN,
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
                    TextSpan(text: 'News', style: TextStyle(color: lightyellow))
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
                  "Trending News",
                  style: TextStyle(
                      color: lightgrey,
                      fontFamily: 'OpenSans',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                      height: 220,
                      width: 400,
                      child: TrendingNews(imgList: imgList)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Recent News",
                      style: TextStyle(
                          color: lightgrey,
                          fontFamily: "OpenSans",
                          fontSize: 22),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                ListTile(
                  minLeadingWidth: 100,
                  leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.network(imgList[0],
                          fit: BoxFit.fill, width: 80, height: 80)),
                  title: const Text(
                    'Brazil Investment Bank to Offer Bitcoin and ETH',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'Trustnodes',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
