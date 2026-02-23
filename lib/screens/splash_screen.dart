import 'package:flutter/material.dart';
import 'package:learnify/screens/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset('assets/our_courses.png'))),
    );
  }
}
