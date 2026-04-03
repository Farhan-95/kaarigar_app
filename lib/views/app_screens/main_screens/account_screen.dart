import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaarigar/core/utils/text_style.dart';
import 'package:kaarigar/views/widgets/custom_tile.dart';

import '../../widgets/custom_appbar_widget/purple_app_bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool overflow = true;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: PurpleAppBar(
        title: 'My Account',
        action: [
          TextButton(
            onPressed: () {},
            child: Text('Edit', style: myTextStyle(Colors.white, 15, false)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Hania_Aamir.jpg'),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              children: [
                Spacer(),
                Text('Hania Aamir', style: myTextStyle(Colors.black, 25, true)),
                Spacer(),
              ],
            ),
            Row(
              children: [
                SizedBox(width: screenWidth * 0.30),
                Icon(Icons.location_on_outlined, color: Colors.black),
                SizedBox(width: 3),
                Text('Burewala', style: myTextStyle(Colors.black, 15, false)),
                Spacer(),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                setState(() {
                  overflow = !overflow;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 8,right: 8,left: 8,bottom: 5),
                height: overflow ? screenHeight * 0.20 : null,
                width: screenWidth * 0.10,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  border: Border.all(color: Color(0xff553FA5),width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Hania Aamir is a globally recognized Pakistani actress, famously known as the "Dimple Queen," who has recently made headlines for her debut in the Indian Punjabi film Sardaar Ji 3 alongside Diljit Dosanjh. She is currently the most-followed Pakistani woman on Instagram, celebrated for her natural charm and blockbuster performances in dramas like Mere Humsafar, Kabhi Main Kabhi Tum, and Meri Zindagi Hai Tu. In March 2025, her significant contributions to the entertainment industry were officially honored at the UK Parliament where she received the "Star of Pakistan" award.',
                  style: overflow
                      ? TextStyle(overflow: TextOverflow.fade)
                      : TextStyle(overflow: TextOverflow.visible),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text('Information', style: myTextStyle(Colors.black, 25, true)),
            SizedBox(height: screenHeight * 0.01),
            CustomTile(
              title: 'Location',
              subTitle: 'Chak no 495 E.B Burewala',
              trailing: true,
            ),
            CustomTile(
              title: 'Order History',
              subTitle: '9 Orders',
              trailing: true,
            ),
            CustomTile(title: 'Language', subTitle: 'English', trailing: true),
            Text('Payment', style: myTextStyle(Colors.black, 25, true)),
            SizedBox(height: screenHeight * 0.02),
            ListTile(
              leading: Image.asset('assets/images/visa_card.png'),
              title: Text(
                'Visa Card',
                style: myTextStyle(Colors.black, 20, false),
              ),
              subtitle: Text(
                '0583*********533',
                style: myTextStyle(Colors.black, 15, false),
              ),
            ),
            Divider(),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.white),
                style: IconButton.styleFrom(backgroundColor: Color(0xff553FA5)),
              ),
              title: Text(
                'Add New Card',
                style: myTextStyle(Colors.black, 20, false),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
