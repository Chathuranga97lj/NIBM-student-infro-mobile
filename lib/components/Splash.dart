import 'package:flutter/material.dart';
import 'package:student_info/Admin.dart';
import 'package:student_info/HomePage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
        //MaterialPageRoute(builder: (context) => const Admin()),
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
