import 'package:cached_network_image/cached_network_image.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/videos.dart';
import 'package:cryptospace/ui/widget/videos_card.dart';
import 'package:flutter/material.dart';

class AcademyScreen extends StatefulWidget {
  const AcademyScreen({Key? key}) : super(key: key);

  @override
  _AcademyScreenState createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyScreen>
    with SingleTickerProviderStateMixin {
  final List<Videos> videos = [
    Videos(
        "https://www.youtube.com/watch?v=Vp3xwF0Zz8Y",
        'https://img.youtube.com/vi/Vp3xwF0Zz8Y/maxresdefault.jpg',
        "សំណុំរឿងកក្រើកមេឃ 01/30 | រឿងភាគហុងកុង និយាយខ្មែរ (Sinister Beings)",
        Level.beginner),
    Videos(
        "https://www.youtube.com/watch?v=d8iK-lfKUCg",
        'https://img.youtube.com/vi/d8iK-lfKUCg/maxresdefault.jpg',
        "សំណុំរឿងកក្រើកមេឃ 03/30 | រឿងភាគហុងកុង និយាយខ្មែរ (Sinister Beings)",
        Level.beginner),
    Videos(
        "https://www.youtube.com/watch?v=br4ZrUb4DaA",
        'https://img.youtube.com/vi/br4ZrUb4DaA/maxresdefault.jpg',
        "សំណុំរឿងកក្រើកមេឃ 02/30 | រឿងភាគហុងកុង និយាយខ្មែរ (Sinister Beings)",
        Level.intermidate),
    Videos(
        "https://www.youtube.com/watch?v=jdtQZEKDPGI",
        'https://img.youtube.com/vi/jdtQZEKDPGI/maxresdefault.jpg',
        "សំណុំរឿងកក្រើកមេឃ 04/30 | រឿងភាគហុងកុង និយាយខ្មែរ (Sinister Beings)",
        Level.beginner),
  ];

  late TabController _tabController;
  bool isLoading = true;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  Future cachedImage(BuildContext context, String urlImage) =>
      precacheImage(CachedNetworkImageProvider(urlImage), context);

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: lightDark,
        child: Column(
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
                          text: 'Academy', style: TextStyle(color: lightyellow))
                    ]),
              ),
              elevation: 0,
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  ListView(
                    children: videos.map((i) {
                      return VideosCard(videos: i);
                    }).toList(),
                  ),

                  // second tab bar view widget
                  const Center(
                    child: Text(
                      'Text Here',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Text Here',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Text Here',
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
      ),
    );
  }
  // Widget buildImg(String urlImage){
  //   return Card(
  //       color: lightDark,
  //       child: SizedBox(
  //         height: 300,
  //         width: MediaQuery.of(context).size.width,
  //         child: Column(
  //           children: [
  //             CircleAvatar(
  //               backgroundImage: 
  //               CachedNetworkImageProvider(url),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
  //               child: Row(
  //                 children: [
  //                   CircularProfileAvatar(
  //                     'https://yt3.ggpht.com/ytc/AKedOLR9stDdH-mSmo-BfN8YkOMvxBCT7bgJDUc3ic2N7A=s48-c-k-c0x00ffffff-no-rj',
  //                     radius: 20,
  //                   ),
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                   Flexible(
  //                       child: Text(
  //                     videos.title,
  //                     style: const TextStyle(color: Colors.white),
  //                   ))
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  // }
}
