import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: Color(0xff553FA5),
      appBar: PurpleAppBar(title: 'My Wallet',),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.10),
          Center(
            child: Text(
              '15,000 Rs',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.10,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.020),
          Text(
            'TOTAL EARN',
            style: GoogleFonts.roboto(
              fontSize: screenWidth * 0.04,
              color: Colors.white,
            ),
          ),
          SizedBox(height: screenWidth * 0.07),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Payment Method',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Payment History',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/Hania_Aamir.jpg',
                      ),
                    ),
                    title: Text(
                      'Hania Aamir',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('01/04/2026'),
                    trailing: Text(
                      '1000 Rs',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
