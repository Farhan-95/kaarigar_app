import 'package:flutter/material.dart';
import 'package:kaarigar/services/shared_preference/shared_preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/routes/app_route.dart';

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
    await Future.delayed(Duration(seconds: 6));
    await SharedPreferencesService.init();
    bool? isFirstTime = SharedPreferencesService.getBool('isFirstTime')??true;
    bool? isLoggedIn = SharedPreferencesService.getBool('isLoggedIn')??false;
   if(isFirstTime){
     Navigator.pushReplacementNamed(context, AppRoute.notification);
   }
   else if(!isLoggedIn){
     Navigator.pushReplacementNamed(context, AppRoute.signIn);
   }
   else{
     Navigator.pushReplacementNamed(context, AppRoute.main);
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff553FA5),
      body: Center(child: SizedBox(child:Image.asset('assets/icons/app_logo.png') ,)),
    );
  }
}
