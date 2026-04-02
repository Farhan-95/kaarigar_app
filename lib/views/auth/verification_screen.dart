import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/customize_button/customize_black_button.dart';

class VerificationScreen extends StatefulWidget {

  const VerificationScreen({super.key,required this.email});
  final String email;

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Verification Code',
          style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
        ),
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
        child: SingleChildScrollView(
          reverse: true, // ensures last field is visible when keyboard opens
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              Center(
                child: Text(
                  'We have sent you an SMS with a code',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04, // responsive font size
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'to the email',
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: Text(
                  widget.email,
                  style: GoogleFonts.roboto(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    width: 60,
                    height: 50,
                    child: CustomTextField(autoFocused: true,controller: controller1,),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    width: 60,
                    height: 50,
                    child: CustomTextField(controller: controller2,),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 50,
                    width: 60,
                    child: CustomTextField(controller: controller3,),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 50,
                    width: 60,
                    child: CustomTextField(controller: controller4,),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.065),
              CustomizeBlackButton(buttonName: 'Verify', onPressed: () {}),
              SizedBox(height: screenHeight * 0.015),
              Center(
                child: InkWell(
                  child: Text(
                    'Resend a new code',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              Center(
                child: InkWell(
                  child: Text(
                    'Available in 10 seconds',
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
