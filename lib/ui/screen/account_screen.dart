import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/app_theme.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({ Key? key }) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: lightDark,
        key: Keys.ACCOUNT_SCREEN,
        child: Column(
          children: [
            AppBar(
              backgroundColor: lightDark,
              elevation: 0,
              toolbarHeight: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProfileAvatar(
                      // _userObj['picture']['data']['url'],
                     'https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/s526x395/242798350_2968744236724308_2757375587570040415_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE9dG25guQxyr6Jgn0KgtT8wgTwUgzepxfCBPBSDN6nF6Xp3xSlUmUJ_lvsG1kN846O-geyX4E81JWPiuosaXZ3&_nc_ohc=mDdcgEitbOUAX9sAmG0&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=f3d3fb9fdff4f41fd7b6b7529976a4c8&oe=61807B3A',
                      radius: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Andres Gome",
                      style: TextStyle(fontFamily: 'Open Sans',color: lightgrey),
                      maxFontSize: 25,
                      minFontSize: 20,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SettingsList(
                sections: [
                  SettingsSection(
                    title: 'Settings',
                    titleTextStyle: const TextStyle(
                        fontSize: 20, color: Colors.amberAccent),
                    tiles: const [
                      SettingsTile(
                        title: 'Edit Profile',
                        subtitle: 'Tah H',
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                        ),
                      ),
                      SettingsTile(
                        title: 'Pair',
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                        ),
                      ),
                      SettingsTile(
                        title: 'Language',
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                        ),
                      ),
                      
                    ],
                  ),
                  SettingsSection(
                    title: 'About',
                    titleTextStyle: const TextStyle(
                        fontSize: 20, color: Colors.amberAccent),
                    tiles: const [
                      SettingsTile(title: 'Connect Support'),
                      SettingsTile(title: 'Term and Privacy'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: lightyellow,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                primary: Colors.black,
              ),onPressed: () {}, child: const Text('Log Out'),),
            )
          ],
        ));
  }
}

