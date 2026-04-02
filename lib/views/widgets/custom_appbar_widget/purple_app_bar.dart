import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PurpleAppBar({super.key,this.title = "",});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
