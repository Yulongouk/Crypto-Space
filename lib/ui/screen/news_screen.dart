import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/model/trending_news.dart';
import 'package:cryptospace/ui/widget/carousel_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);
  final List<String> imgList = [
    'https://www.nasdaq.com/sites/acquia.prod/files/styles/1370x700/public/bitcoin_magazine/img_6302.png?h=33ada183&itok=WEoWWtne',
    'https://www.trustnodes.com/wp-content/uploads/2021/09/xbtg-pactual-office.jpg.pagespeed.ic.mTk79KSrnI.webp',
    'https://images.cointelegraph.com/images/638_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDkvYzM1MjFlNDktOWYwYi00Y2VlLWIwZGYtMWU1YmEzYzI0MGY0LmpwZw==.jpg',
  ];
  final List<TopNews> topnews = [
    TopNews(
        'https://www.nasdaq.com/sites/acquia.prod/files/styles/1370x700/public/bitcoin_magazine/img_6302.png?h=33ada183&itok=WEoWWtne',
        'California Should Replicate Bitcoin’s Ethos',
        'Nasdaq',
        'https://www.nasdaq.com/articles/california-should-replicate-bitcoins-ethos-2021-09-21'),
    TopNews(
        'https://www.trustnodes.com/wp-content/uploads/2021/09/xbtg-pactual-office.jpg.pagespeed.ic.mTk79KSrnI.webp',
        'Brazil Investment Bank to Offer Bitcoin and ETH',
        'Trustnodes',
        'https://www.trustnodes.com/2021/09/20/brazil-investment-bank-to-offer-bitcoin-and-eth'),
    TopNews(
        'https://images.cointelegraph.com/images/638_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDkvYzM1MjFlNDktOWYwYi00Y2VlLWIwZGYtMWU1YmEzYzI0MGY0LmpwZw==.jpg',
        'Traders buy the Bitcoin dip even as Evergrande’s implosion rocks stock markets',
        'CoinTelegraph',
        'https://cointelegraph.com/news/traders-buy-the-bitcoin-dip-even-as-evergrande-s-implosion-rocks-stock-markets')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Keys.NEWS_SCREEN,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: lightDark,
              toolbarHeight: 65,
              title: RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 25, fontFamily: 'Coda'),
                    children: [
                      const TextSpan(text: 'Crypto '),
                      TextSpan(
                          text: 'News', style: TextStyle(color: lightyellow))
                    ]),
              ),
              elevation: 0,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: lightDark,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                          height: 250,
                          width: 400,
                          child:
                              TrendingNews(topnews: topnews, imgList: imgList)),
                    ),
                    Row(
                      children: [
                        Text(
                          "Recent News",
                          style: TextStyle(
                              color: lightgrey,
                              fontFamily: "OpenSans",
                              fontSize: 22),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2.3,
                      child: ListView.builder(
                        itemCount: topnews.length,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            onTap: () {
                              launch(topnews[index].link);
                            },
                            child: ListTile(
                              minLeadingWidth: 100,
                              leading: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  child: Image.network(
                                    topnews[index].imgSrc,
                                    fit: BoxFit.fill,
                                    width: 80,
                                    height: 80,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: lightyellow,
                                        ),
                                      );
                                    },
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.error)
                                  )),
                              title: Text(
                                topnews[index].title,
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: lightgrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                topnews[index].source,
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: lightgrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
