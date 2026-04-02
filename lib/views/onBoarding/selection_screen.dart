import 'package:flutter/material.dart';
import 'package:kaarigar/views/auth/log_in_screen.dart';
import 'package:kaarigar/views/auth/sign_up_screen.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_blue_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/selection_screen_background_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 200,
            left: 20,
            child: Text(
              'Welcome To 3Business App',
              style: GoogleFonts.roboto(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 160,
            left: 135,
            child: Text(
              "Let's Go",
              style: GoogleFonts.roboto(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 5,
            child: Row(
              children: [
                CustomizeBlueButton(
                  buttonWidth: 170,
                  buttonHeight: 55,
                  buttonName: 'SIGN IN',
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));},
                  buttonColor: Color(0xff57A4C3),
                ),
                SizedBox(width: 10),
                CustomizeBlueButton(
                  buttonWidth: 170,
                  buttonHeight: 55,
                  buttonName: 'SIGN UP',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  buttonColor: Color(0xff553FA5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
