import 'package:flutter/material.dart';
import 'package:kaarigar/views/app_screens/main_screens/account_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/menu_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/search_screen.dart';
import 'package:kaarigar/views/app_screens/main_screens/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> screens =[MenuScreen(),SearchScreen(),WalletScreen(),AccountScreen(),MenuScreen()];
  int bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[bottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: bottomNavigationBarIndex,
        onTap: (value){
          setState(() {
            bottomNavigationBarIndex = value;
          });
        },
        unselectedItemColor: Colors.black38,
        selectedItemColor: Color(0xff553FA5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: ""),
        ],
      ),
    );
  }
}
