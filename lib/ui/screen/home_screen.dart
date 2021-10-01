import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/top_card.dart';
import 'package:cryptospace/ui/widget/favorite_card.dart';
import 'package:cryptospace/ui/widget/list_coin.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<TopCard> topCards = [
    TopCard('DogeCoin', '0.21', '0.31'),
    TopCard('MATIC', '1.085', '1.23'),
    TopCard('Ethereum', '3120.56', '1.45')
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      key: Keys.HOME_SCREEN,
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 65,
            title: RichText(text: const TextSpan(style:  TextStyle(fontSize: 25, fontFamily: 'Coda'),
            children: [
               TextSpan(text: 'Crypto Space')
            ]),),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications))
            ],
            elevation: 0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Favorites",
                      style: TextStyle(
                          color: lightgrey,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text("See All",
                        style: TextStyle(
                            color: lightyellow,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: topCards.map((i) {
                      return FavoriteCard(topCards: i);
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(key: Keys.NAV_LISTCOIN, child: const ListCoin())
        ],
      ),
    );
  }
}
