import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cryptospace/constraints/keys.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';
class AccountScreen extends HookConsumerWidget {
  const AccountScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      key: Keys.ACCOUNT_SCREEN,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProfileAvatar('https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/s526x395/242798350_2968744236724308_2757375587570040415_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE9dG25guQxyr6Jgn0KgtT8wgTwUgzepxfCBPBSDN6nF6Xp3xSlUmUJ_lvsG1kN846O-geyX4E81JWPiuosaXZ3&_nc_ohc=mDdcgEitbOUAX9sAmG0&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=f3d3fb9fdff4f41fd7b6b7529976a4c8&oe=61807B3A',),
                  Text('Denies Tere'),
                ],
              )
            ],
          ),
          Expanded(child: SettingsList(sections: [
            SettingsSection(
              title: 'Account Settings',
              tiles: [
                SettingsTile(title: 'Account')
              ],
            ),
            SettingsSection(
              title: 'Rule and Privacy',
              tiles: [
                SettingsTile(title: 'Privacy')
              ],
            )
          ],))
        ],
      )
    );
  }
}