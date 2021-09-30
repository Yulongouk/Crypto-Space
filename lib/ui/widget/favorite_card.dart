// ignore_for_file: must_be_immutable

import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/top_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  final TopCard topCards;
  const FavoriteCard({Key? key, required this.topCards}) : super(key: key);
  

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: deepDark,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.white.withOpacity(0.3))),
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        height: 80,
        width: 120,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Center(
                  child: Column(
                    children: [
                      Text(widget.topCards.symbol,
                          style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20,
                              color: Colors.white)),
                      Text(
                        widget.topCards.lastPrice,
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.topCards.priceChangePercent+"%",
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
