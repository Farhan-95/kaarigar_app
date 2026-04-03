import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhiteAppBar({super.key,required this.title,this.action,required this.leading});

   final String title;
   final List<Widget>? action;
   final Widget leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.black26,
      title: Text(
        title,
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 2,
      leading: leading,
      actions: action,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}