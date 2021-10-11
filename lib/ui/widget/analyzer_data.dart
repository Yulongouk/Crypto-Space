import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/analyzer.dart';
import 'package:cryptospace/ui/widget/positon_card.dart';
import 'package:flutter/material.dart';

class AnalyzerData extends StatefulWidget {
  final Analyzer analyzer;
  final String token;
  const AnalyzerData({Key? key, required this.analyzer, required this.token})
      : super(key: key);

  @override
  _AnalyzerDataState createState() => _AnalyzerDataState();
}

class _AnalyzerDataState extends State<AnalyzerData>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: deepDark,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Value (BTC)',
                            style: TextStyle(
                              color: lightgrey,
                              fontFamily: 'Open Sans',
                              fontSize: 15,
                            )),
                        const SizedBox(height: 10),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                                text: widget.analyzer.analyzeData.totalValue,
                                style: TextStyle(
                                    color: lightgrey,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            TextSpan(
                              text: " = \$ 10",
                              style: TextStyle(
                                  color: lightgrey.withOpacity(0.8),
                                  fontFamily: 'Open Sans',
                                  fontSize: 15),
                            )
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TabBar(
                    controller: _controller,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.0,
                      ),
                      color: lightyellow,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black.withOpacity(0.5),

                    tabs: const [
                      // first tab [you can add an icon using the icon property]
                      Tab(
                          child: Text(
                        'Position',
                        style: TextStyle(fontSize: 15),
                      )),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Open Order',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [
                // first tab bar view widget
                ListView(
                  scrollDirection: Axis.vertical,
                  children: widget.analyzer.analyzeData.position.map((i) => PositionCard(position: i,)).toList(),
                )
,
                ListView(
                  scrollDirection: Axis.vertical,
                  children: widget.analyzer.analyzeData.position.map((i) => PositionCard(position: i,)).toList(),)
                // second tab bar view widget
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
