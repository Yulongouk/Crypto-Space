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
                     'https://randomuser.me/api/portraits/men/11.jpg',
                      radius: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Sithan",
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
              child: SettingsList( physics: const NeverScrollableScrollPhysics(),
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
                    titleTextStyle: TextStyle(
                        fontSize: 20, color: lightyellow),
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

