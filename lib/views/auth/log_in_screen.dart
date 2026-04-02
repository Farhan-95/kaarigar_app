import 'package:flutter/material.dart';
import 'package:kaarigar/views/app_screens/main_screen.dart';
import 'package:kaarigar/views/auth/forgot_password_screen.dart';
import 'package:kaarigar/views/auth/sign_up_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaarigar/views/widgets/direct_app_in_widget.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/customize_button/customize_black_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obSecure = true;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff553FA5),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SizedBox(
            height: 32,
            width: 32,
            child: Image.asset('assets/icons/white_back_arrow.png'),
          ),
        ),
      ),
      backgroundColor: Color(0xff553FA5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.03,
            right: screenWidth * 0.03,
            top: screenHeight * 0.02,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: screenHeight * 0.040),
                Center(
                  child: Text(
                    'Login to',
                    style: GoogleFonts.roboto(
                      fontSize: screenWidth * 0.08,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Your Account',
                    style: GoogleFonts.roboto(
                      fontSize: screenWidth * 0.08,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                SizedBox(
                  height: screenHeight * 0.065,
                  child: CustomTextField(
                    hintText: 'Mobile Number',
                    controller: emailController,
                    autoFocused: true,
                  ),
                ),
                SizedBox(height: screenHeight * 0.020),
                SizedBox(
                  height: screenHeight * 0.065,
                  child: CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    obSecure: obSecure,
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          obSecure = !obSecure;
                        });
                      },
                      icon: obSecure
                          ? Icon(Icons.remove_red_eye,color: Colors.white,)
                          : Icon(Icons.visibility_off,color: Colors.white,),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.003),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
                CustomizeBlackButton(
                  buttonName: 'SIGN IN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MainScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.015),
                Center(child:DirectAppInWidget() ,),
                SizedBox(height: screenHeight * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Not yet a member?',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
