import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/top_card.dart';
import 'package:cryptospace/ui/widget/list_coin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<TopCard> topCards = [
    TopCard('DogeCoin', '0.21', '0.31'),
    TopCard('MATIC', '1.085', '1.23'),
    TopCard('Ethereum', '3120.56', '1.45')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightDark,
      key: Keys.HOME_SCREEN,
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 65,
            backgroundColor: lightDark,
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
          
          Expanded(key: Keys.NAV_LISTCOIN, child: const ListCoin())
        ],
      ),
    );
  }
}
