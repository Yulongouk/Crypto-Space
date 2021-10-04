import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:cryptospace/ui/widget/positon_card.dart';
import 'package:cryptospace/ui/widget/videos_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AcademyScreen extends StatefulWidget {
  @override
  _AcademyScreenState createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          AppBar(
              toolbarHeight: 65,
              title: RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 25, fontFamily: 'Coda'),
                    children: [
                      const TextSpan(text: 'Crypto '),
                      TextSpan(
                          text: 'Academy', style: TextStyle(color: lightyellow))
                    ]),
              ),
              elevation: 0,
            ),
            SizedBox(height: 20,),
          Container(
          height: 35,
          decoration: BoxDecoration(
            color: lightDark,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: lightyellow,
            ),
            indicatorColor: Colors.white,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Lastest Videos',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Beginner',
              ),
              Tab(
                text: 'Intermidiate',
              ),
              Tab(
                text: 'Advanced',
              ),
            ],
          ),
            ),
          SizedBox(height:20,),
            // tab bar view here
            Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              // first tab bar view widget 
              SingleChildScrollView(
                child: Column(
                  children: [
                   VideosCard(),
                   VideosCard(),
                   VideosCard(),
                  ],
                ),
              ),

              // second tab bar view widget
              Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
            ),

        ],
      ),
    );
  }
}
