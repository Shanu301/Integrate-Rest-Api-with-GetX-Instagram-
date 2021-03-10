import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/View/HomePage.dart';

// FirebaseFirestore firestore = FirebaseFirestore.instance;
// FirebaseAuth auth = FirebaseAuth.instance;
// var firebaseUser = auth.currentUser;
// var currentUserUID = firebaseUser.uid;

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigateToPage);
  }

  void navigateToPage() {
    Navigator.pushReplacement(
      (context),
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  void initState() {
    super.initState();
    // if(firebaseUser!=null){
    //   LandingPage();
    // }else{
    //   startSplashScreenTimer();
    // }
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(


      decoration: BoxDecoration(
        //color: const Color(0x000000),
        color: Colors.white,
        image: DecorationImage(

          image: ExactAssetImage("asset/insta.png"),

        ),
      ),
    );
  }


}