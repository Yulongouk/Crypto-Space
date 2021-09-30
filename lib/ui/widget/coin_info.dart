// ignore_for_file: file_names

import 'package:cryptospace/model/coin_data.dart';
import 'package:flutter/material.dart';

class CoinInfo extends StatefulWidget {
  final CoinData coinData;
  const CoinInfo({Key? key, required this.coinData}) : super(key: key);

  @override
  State<CoinInfo> createState() => _CoinInfoState();
}

class _CoinInfoState extends State<CoinInfo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.coinData.nameCoin,
                style: const TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: 'Quicksand'),
              ),
              Text(
                widget.coinData.symbolCoin.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            ]),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.coinData.lastPrice + '\$',
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              Row(children: [
                Text(
                  widget.coinData.priceChange,
                  style: const TextStyle(color: Colors.red),
                ),
                Text(
                  '(${widget.coinData.priceChangePercent}%)',
                  style: const TextStyle(color: Colors.white),
                )
              ])
            ],
          ),
        ],
      ),
    );
  }
}
