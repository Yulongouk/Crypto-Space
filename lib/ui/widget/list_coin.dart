import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/coin_data.dart';
import 'package:cryptospace/ui/widget/coin_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCoin extends StatefulWidget {
  const ListCoin({Key? key}) : super(key: key);
  @override
  State<ListCoin> createState() => _ListCoinState();
}

class _ListCoinState extends State<ListCoin> {
  final List<CoinData> coinData = [
    CoinData('Bitcoin', 'btcusdt', '32344.34', '0.05', '44814.97'),
    CoinData('Polkadot', 'dotusdt', '30.44', '0.05', '0.05'),
    CoinData('XRP', 'btcusdt', '0.96', '0.34', '-4.35'),
    CoinData('DogeCoin', 'dogeusdt', '0.21', '0.27', '6.67')
  ];
  @override
  Widget build(BuildContext context) {
    String? dropdownValue;
    return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            color: deepDark),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Markets Currencies",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontFamily: 'OpenSans',
                      fontSize: 20),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  decoration: BoxDecoration(
                      color: deepDark, borderRadius: BorderRadius.circular(10)),

                  // dropdown below..
                  child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.amberAccent,
                      ),
                      iconSize: 25,
                      underline: const SizedBox(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'All market',
                        'Binance',
                        'CoinMarketCap',
                        'Four'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: coinData
                    .map((i) => CoinInfo(
                          coinData: i,
                        ))
                    .toList(),
              ),
            ),
          ]),
        ));
  }
}
