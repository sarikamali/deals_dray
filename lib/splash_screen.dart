import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deals_dray/phone_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PhoneScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image(
                height: 570,
                image: AssetImage('assets/images/splash2.png'),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.red),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 200,
                width: 200,
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   width: 400,
      //   height: 500,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/splash2.png'),
      //       fit: BoxFit.cover,
      //     ),

      //     // gradient: LinearGradient(
      //     //     begin: Alignment.bottomCenter,
      //     //     end: Alignment.bottomCenter,
      //     //     colors: [Colors.black12, Colors.black]),
      //   ),
      // child: const Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     CircularProgressIndicator(
      //       valueColor:
      //           AlwaysStoppedAnimation(Color.fromARGB(255, 211, 59, 48)),
      //     ),
      //     SizedBox(
      //       height: 200,
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(bottom: 25),
      //       child: Image(
      //         image: AssetImage('assets/images/logo.png'),
      //         height: 200,
      //         width: 200,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
