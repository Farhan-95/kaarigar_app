import 'package:flutter/material.dart';
import 'package:kaarigar/views/onBoarding/notification_screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveNext();
  }

  void moveNext()async{
   await Future.delayed(Duration(seconds: 5));
   Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen1()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff553FA5),
      body: Center(child: SizedBox(child:Image.asset('assets/icons/app_logo.png') ,)),
    );
  }
}
