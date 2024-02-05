import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfiraba/user_auth/sign_up_page.dart';

import '../user_auth/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


      @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Center(
        child: Text("Welcome to Flutter Firabase"),
      )
    ,);
  }
}
