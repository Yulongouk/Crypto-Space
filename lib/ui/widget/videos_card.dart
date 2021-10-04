import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:flutter/material.dart';

class VideosCard extends StatelessWidget {
  const VideosCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: lightDark,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            FittedBox(
              child: Image.network(
                  'https://img.youtube.com/vi/eonCH8CBRLA/maxresdefault.jpg'),
              fit: BoxFit.fill,
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
                  Flexible(child: Text('សំណុំរឿងកក្រើកមេឃ 05/30 | រឿងភាគហុងកុង និយាយខ្មែរ (Sinister Beings)'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
