import 'package:cryptospace/model/open_order.dart';
import 'package:flutter/material.dart';

class OpenOrderCard extends StatefulWidget {
  final OpenOrder openorder;
  const OpenOrderCard({Key? key, required this.openorder}) : super(key: key);

  @override
  State<OpenOrderCard> createState() => _OpenOrderCardState();
}

class _OpenOrderCardState extends State<OpenOrderCard> {
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
                  children: [
                    Text(widget.openorder.symbol,
                        style: const TextStyle(
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
                        Text(widget.openorder.size,
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
                          widget.openorder.unrealizedPNL,
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
                          widget.openorder.margin,
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
                          widget.openorder.entryPrice,
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
                          widget.openorder.markPrice,
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
                          widget.openorder.liquidationPrice,
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
