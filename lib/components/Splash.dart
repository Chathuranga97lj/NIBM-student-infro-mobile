import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_info/HomePage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(image: AssetImage("assets/image/splash.png"), width: 412, height: 829, fit: BoxFit.fill,),
    );
  }
}
