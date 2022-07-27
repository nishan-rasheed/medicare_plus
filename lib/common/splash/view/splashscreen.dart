import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Center(
        child: Lottie.asset('assets/images/mediplus.json',
        repeat: false,
        
        ),
      ),
    );
  }
}
