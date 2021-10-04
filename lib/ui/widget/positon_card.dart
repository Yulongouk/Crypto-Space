import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PositionCard extends HookConsumerWidget {
  const PositionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      children: const [
                        Text(
                          'Size(BTC)',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('0.004',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Unrealized PNL[%ROE]',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '0.05(+0.21%)',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Margin',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '0.004',
                          style: TextStyle(
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
                      children: const [
                        Text(
                          'Entry Price',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '31750.00',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mark Price',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '31736.60',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Liquidation Price',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '37948.20',
                          style: TextStyle(
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