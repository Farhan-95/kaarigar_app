import 'package:flutter/material.dart';
import 'package:kaarigar/core/routes/app_route.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_black_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationScreen2 extends StatelessWidget {
  const NotificationScreen2({super.key});

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
                  Navigator.pushNamed(context, AppRoute.selection);
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
            height: 350,
            width: 350,
            child: Image.asset('assets/icons/map_icon.png', fit: BoxFit.cover),
          ),
          Text(
            "Active the Place",
            style: GoogleFonts.poppins(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "You can now specify your address to deliver",
            style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),
          ),
          Text(
            "your orders and see which payment method is",
            style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),
          ),
          Text(
            "right for you",
            style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),
          ),
          Spacer(),
          CustomizeBlackButton(buttonName: 'Active', onPressed: () async{
            await Permission.location.request();
            Navigator.pushReplacementNamed(context, AppRoute.selection);
          }),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
