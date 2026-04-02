import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectAppInWidget extends StatelessWidget {
  const DirectAppInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'OR',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Sign in with',
          style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Spacer(),
            InkWell(
              child: Card(
                elevation: 5,
                child: Image.asset('assets/icons/google_logo_icon.png'),
              ),
            ),
            SizedBox(width: 12),
            InkWell(
              child: Card(
                elevation: 5,
                child: Image.asset('assets/icons/apple_logo_icon.png'),
              ),
            ),
            SizedBox(width: 12),
            InkWell(
              child: Card(
                elevation: 5,
                child: Image.asset('assets/icons/facebook_logo_icon.png'),
              ),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
