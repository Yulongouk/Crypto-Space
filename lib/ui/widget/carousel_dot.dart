import 'package:carousel_slider/carousel_slider.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:flutter/material.dart';

class TrendingNews extends StatefulWidget {
  List<String> imgList;
  TrendingNews({Key? key, required this.imgList}) : super(key: key);

  @override
  State<TrendingNews> createState() => _TrendingNewsState();
}

class _TrendingNewsState extends State<TrendingNews> {
  @override
  Widget build(BuildContext context) {
    
    int _current = 0;
    final List<Widget> imageSlider = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Stack(
                  children: [
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 400,
                      height: 200,
                    )
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
                  autoPlay: true, enlargeCenterPage: true, aspectRatio: 2.0,onPageChanged: (index, reason){
                    setState(() {
                      _current = index;
                    });
                  })),
                  const SizedBox(height: 0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              widget.imgList.map((url) {
                int index = widget.imgList.indexOf(url);
                return Container(
                  width: 8,height: 8, margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? lightyellow : lightgrey
                  ),
                );
              }).toList(),
          )
        ],
      ),
    );
  }
}
