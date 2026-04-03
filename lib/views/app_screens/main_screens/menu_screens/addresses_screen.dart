import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_blue_button.dart';

import '../../../../core/utils/text_style.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({super.key});

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  bool address = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PurpleAppBar(title: 'Address'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.wallet_outlined),
              title: Text(
                'Add New Address',
                style: myTextStyle(Colors.black, 15, true),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.forward),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Text('Addresses', style: myTextStyle(Colors.black, 18, true)),
            ],
          ),
          SizedBox(height: 10),
          Card(
            child: Column(
              children: [
                Text('Pakistan', style: myTextStyle(Colors.black, 18, false)),
                Text(
                  'Chak no 495 E.B Burewala,Pakistan',
                  style: myTextStyle(Colors.grey, 15, false),
                ),
                Text('03166496855', style: myTextStyle(Colors.grey, 15, false)),
                Text(
                  'Zip code: 61010',
                  style: myTextStyle(Colors.grey, 15, false),
                ),
                ListTile(
                  leading: Checkbox(value: address, onChanged: (value){
                    setState(() {
                      address = value!;
                    });
                  }),
                  title: Text(
                    'Set Address Default',
                    style: myTextStyle(Colors.black, 16, false),
                  ),
                  trailing: CustomizeBlueButton(
                    buttonName: Icon(Icons.edit, color: Colors.white),
                    onPressed: () {},
                    buttonColor: Color(0xff57A4C3),
                    buttonWidth: 15,
                    buttonHeight: 15,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Pakistan', style: myTextStyle(Colors.black, 18, false)),
                Text(
                  'Chak no 495 E.B Burewala,Pakistan',
                  style: myTextStyle(Colors.grey, 15, false),
                ),
                Text('03166496855', style: myTextStyle(Colors.grey, 15, false)),
                Text(
                  'Zip code: 61010',
                  style: myTextStyle(Colors.grey, 15, false),
                ),
                ListTile(
                  leading: Checkbox(value: address, onChanged: (value){
                    setState(() {
                      address = value!;
                    });
                  }),
                  title: Text(
                    'Set Address Default',
                    style: myTextStyle(Colors.black, 16, false),
                  ),
                  trailing: CustomizeBlueButton(
                    buttonName: Icon(Icons.edit, color: Colors.white),
                    onPressed: () {},
                    buttonColor: Color(0xff57A4C3),
                    buttonWidth: 15,
                    buttonHeight: 15,
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
