import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/model/videos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideosCard extends StatelessWidget {
  final Videos videos;
  const VideosCard({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(videos.videosLink);
      },
      child: Card(
        color: lightDark,
        child: SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                child:  CachedNetworkImage(
        imageUrl: videos.imgLink,
        progressIndicatorBuilder: (context, url, downloadProgress) => 
                CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
     ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                child: Row(
                  children: [
                    CircularProfileAvatar(
                      'https://yt3.ggpht.com/ytc/AKedOLR9stDdH-mSmo-BfN8YkOMvxBCT7bgJDUc3ic2N7A=s48-c-k-c0x00ffffff-no-rj',
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text(
                      videos.title,
                      style: const TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
