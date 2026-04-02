import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhiteAppBar({super.key,required this.title,this.action});

   final String title;
   final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 2,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SizedBox(
          height: 32,
          width: 32,
          child: Image.asset('assets/icons/black_back_arrow.png'),
        ),
      ),
      actions: action,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}