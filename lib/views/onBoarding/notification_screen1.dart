import 'package:flutter/material.dart';
import 'package:kaarigar/core/routes/app_route.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_black_button.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen1 extends StatelessWidget {
  const NotificationScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff553FA5),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.location);
                },
                child: Text(
                  'SKIP',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 410,
            width: 350,
            child: Image.asset(
              'assets/icons/notification_onboard_screen_icon.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Notifications",
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Allow user to receive new alerts",
            style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
          ),
          Spacer(),
          CustomizeBlackButton(buttonName: 'Notify me', onPressed: () {}),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
