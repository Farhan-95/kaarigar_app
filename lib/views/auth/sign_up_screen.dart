import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaarigar/services/shared_preference/shared_preferences_service.dart';
import 'package:kaarigar/views/auth/service_category_screen.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';
import 'package:kaarigar/views/widgets/custom_text_field.dart';
import 'package:kaarigar/views/widgets/customize_button/customize_black_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaarigar/views/widgets/direct_app_in_widget.dart';
import '../../core/routes/app_route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  String selectedValue = '';

  void valueChange() async {
    await SharedPreferencesService.init();
    await SharedPreferencesService.setBool('isLoggedIn', true);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  bool obSecure = true;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
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
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'Create New',
                      style: GoogleFonts.roboto(
                        fontSize: screenWidth * 0.08, // responsive font size
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Account',
                      style: GoogleFonts.roboto(
                        fontSize: screenWidth * 0.08,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Name & Phone Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.45, // responsive width
                        height: screenHeight * 0.090, // responsive height
                        child: CustomTextField(
                          hintText: 'Name',
                          autoFocused: true,
                          controller: nameController,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.45,
                        height: screenHeight * 0.090,
                        child: CustomTextField(
                          hintText: 'Email',
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
                            if (!value.contains('@gmail.com')) {
                              return "Please Enter valid Email";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  SizedBox(
                    height: screenHeight * 0.090,
                    child: CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }

                        // Check for at least one integer (0-9)
                        if (!RegExp(r'(?=.*?[0-9])').hasMatch(value)) {
                          return 'Password must contain at least one number';
                        }

                        // Check for at least one special character
                        if (!RegExp(r'(?=.*?[!@#\$&*~])').hasMatch(value)) {
                          return 'Password must contain at least one special symbol (!@#\$&*)';
                        }

                        // Check for minimum length
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }

                        return null; // Password is valid
                      },
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
                            ? Icon(Icons.remove_red_eye, color: Colors.white)
                            : Icon(Icons.visibility_off, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  SizedBox(
                    height: screenHeight * 0.065,
                    child: CustomTextField(
                      controller: categoryController,
                      readOnly: true,
                      hintText: 'Select Category',
                      suffix: IconButton(
                        icon: Icon(CupertinoIcons.forward, color: Colors.white),
                        onPressed: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ServiceCategoryScreen(),
                            ),
                          );
                          if (result != null) {
                            setState(() {
                              selectedValue = result;
                              categoryController.text = result;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  CustomizeBlackButton(
                    buttonName: 'SIGN UP',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        valueChange();
                        Navigator.pushReplacementNamed(context, AppRoute.main);
                      }
                    },
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  DirectAppInWidget(),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Already a member?',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoute.signIn);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
