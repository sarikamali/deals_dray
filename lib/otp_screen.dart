import 'package:flutter/material.dart';

import 'package:flutter_deals_dray/login_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Image(
                  image: AssetImage('assets/images/msg.png'),
                  width: 90,
                  height: 90,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'OTP Verification',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We have sent a unique OTP number',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 15),
                    ),
                    Text(
                      'to your mobile +91-9765232817',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 15),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '01:57',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.9), fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text('SEND AGAIN'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
