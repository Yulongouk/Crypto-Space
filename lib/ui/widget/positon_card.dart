import 'package:cryptospace/model/position.dart';
import 'package:flutter/material.dart';

class PositionCard extends StatefulWidget {
  final Position position;
  const PositionCard({Key? key, required this.position}) : super(key: key);

  @override
  State<PositionCard> createState() => _PositionCardState();
}

class _PositionCardState extends State<PositionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        borderOnForeground: true,
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Text('BTCUSDT',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                          fontSize: 20,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Size(BTC)',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(widget.position.size,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Unrealized PNL[%ROE]',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          widget.position.unrealizedPNL,
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Margin',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          widget.position.margin,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Entry Price',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          widget.position.entryPrice,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Mark Price',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          widget.position.markPrice,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Liquidation Price',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.position.liquidationPrice,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
