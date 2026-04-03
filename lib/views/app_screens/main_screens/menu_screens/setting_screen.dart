import 'package:flutter/material.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';
import '../../../../core/utils/text_style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool checkNotification = true;
  bool  checkNotificationSound = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PurpleAppBar(
        title: 'Settings',
        action: [
          TextButton(
            onPressed: () {},
            child: Text('Done', style: myTextStyle(Colors.white, 15, false)),
          ),
        ],
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: checkNotification, onChanged:(value){
            setState(() {
              checkNotification = value;
            });
          },
            title: Text('Push Notification',style: myTextStyle(Colors.black, 16, false),),
          ),
          Divider(),
          SwitchListTile(
            value: checkNotificationSound, onChanged:(value){
            setState(() {
              checkNotificationSound = value;
            });
          },
            title: Text('Notification Sound',style: myTextStyle(Colors.black, 16, false),),
          ),
          Divider()
        ],
      )
    );
  }
}
