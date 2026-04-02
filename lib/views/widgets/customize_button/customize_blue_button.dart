import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizeBlueButton extends StatelessWidget {
  const CustomizeBlueButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    required this.buttonColor,
    required this.buttonWidth,
    required this.buttonHeight,
  });
  final String buttonName;
  final VoidCallback onPressed;
  final Color buttonColor;
  final double buttonWidth;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation:10,
        fixedSize: Size(buttonWidth, buttonHeight),
        backgroundColor: buttonColor,
      ),
      child: Text(
        buttonName,
        style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
