import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/trending_news.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrendingNews extends StatefulWidget {
  List<TopNews> topnews;
  List<String> imgList;
  TrendingNews({Key? key, required this.topnews, required this.imgList})
      : super(key: key);

  @override
  State<TrendingNews> createState() => _TrendingNewsState();
}

class _TrendingNewsState extends State<TrendingNews> {
  
    int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlider = widget.topnews
        .map((item) => InkWell(
              onTap: () {
                launch(item.link);
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Stack(
                  children: [
                    Image.network(
                      item.imgSrc,
                      fit: BoxFit.cover,
                      width: 400,
                      height: 200,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Container(
                            height: 60,
                            width: 310,
                            color: deepDark.withOpacity(0.9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                item.title,
                                minFontSize: 15,
                                maxFontSize: 20,
                                maxLines: 2,
                                style: TextStyle(
                                    color: lightgrey,
                                    fontFamily: 'QuickSand',
                                    fontSize: 20),
                              ),
                            )))
                  ],
                ),
              ),
            ))
        .toList();
    return Center(
      child: Column(
        children: [
          CarouselSlider(
              items: imageSlider,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              })),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.topnews.map((url) {
              int index = widget.topnews.indexOf(url);
              return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? lightyellow.withOpacity(0.9)
                    : lightyellow.withOpacity(0.4),
              ),
            );
            }).toList(),
          )
        ],
      ),
    );
  }
}
