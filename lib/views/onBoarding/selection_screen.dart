import 'package:flutter/material.dart';
import 'package:kaarigar/core/routes/app_route.dart';
import 'package:kaarigar/core/utils/text_style.dart';
import 'package:kaarigar/services/shared_preference/shared_preferences_service.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_blue_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});


 void valueChange()async{
   await SharedPreferencesService.init();
   await SharedPreferencesService.setBool('isFirstTime', false);
 }

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
                  buttonName: Text('SIGN IN',style: myTextStyle(Colors.white, 20, false),),
                  onPressed: () {
                    valueChange();
                    Navigator.pushNamed(context, AppRoute.signIn);},
                  buttonColor: Color(0xff57A4C3),
                ),
                SizedBox(width: 10),
                CustomizeBlueButton(
                  buttonWidth: 170,
                  buttonHeight: 55,
                  buttonName: Text('SIGN UP',style: myTextStyle(Colors.white, 20, false),),
                  onPressed: () {
                    valueChange();
                    Navigator.pushNamed(context, AppRoute.signup);
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
