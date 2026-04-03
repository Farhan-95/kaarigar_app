import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaarigar/views/app_screens/main_screens/account_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/menu_screens/addresses_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/menu_screens/payment_methods_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/menu_screens/setting_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/wallet_screen.dart';
import '../../widgets/custom_appbar_widget/purple_app_bar.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List catList = [
    'My Account',
    'Wallet',
    'settings',
    'Addresses',
    'Payment Methods',
    'Find the nearest',
    'My Orders',
  ];
  List<Widget> screensList = [
    AccountScreen(),
    WalletScreen(),
    SettingScreen(),
    AddressesScreen(),
    PaymentMethodsScreen(),
  ];

  String? listValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PurpleAppBar(title: 'Menu'),
      body: ListView(
        children: [
          for (int i = 0; i <= catList.length - 1; i++)
            Column(
              children: [
                ListTile(
                  title: Text(catList[i]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => screensList[i]),
                    );
                  },
                  trailing: Icon(CupertinoIcons.forward, color: Colors.black),
                ),
                Divider(),
              ],
            ),
        ],
      ),
    );
  }
}
