import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/top_card.dart';
import 'package:cryptospace/ui/widget/favorite_card.dart';
import 'package:cryptospace/ui/widget/list_coin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TopCard> topCards = [
    TopCard('DogeCoin', '0.21', '0.31'),
    TopCard('MATIC', '1.085', '1.23'),
    TopCard('Ethereum', '3120.56', '1.45')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightDark,
      child: Column(
        children: [
          AppBar(
            title: const Text('Crypto Space',
                style: TextStyle(fontSize: 25, fontFamily: 'Coda')),
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
          Expanded(child: ListCoin())
        ],
      ),
    );
  }
}
