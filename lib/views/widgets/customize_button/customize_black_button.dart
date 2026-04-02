import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizeBlackButton extends StatelessWidget {
  const CustomizeBlackButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 8,
        fixedSize: Size(350, 55),
        backgroundColor: CupertinoColors.black,
      ),
      child: Text(
        buttonName,
        style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
