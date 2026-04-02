import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/customize_button/customize_black_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Scaffold(
      appBar: PurpleAppBar(),
      backgroundColor: Color(0xff553FA5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.03,
            right: screenWidth * 0.03,
            top: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: screenHeight * 0.040),
              Center(
                child: Text(
                  'Forgot your password',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.08,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.020,),
              Center(
                child: Text(
                  'Enter your registered Email to retrieve',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'your password',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.050),
              SizedBox(
                height: screenHeight * 0.065,
                child: CustomTextField(
                  controller: phoneController,
                  hintText: 'Enter your Email',
                  autoFocused: true,
                ),
              ),
              SizedBox(height: screenHeight * 0.020),
              CustomizeBlackButton(
                buttonName: 'Password recovery',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
