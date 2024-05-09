// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_deals_dray/otp_screen.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 180,
                      width: 180,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TabBar(
                          indicator: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: const [
                            Tab(
                              text: 'Phone',
                            ),
                            Tab(
                              text: 'Email',
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Glad to see you!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Please provide your phone number',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: 370,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtpScreen(),
                              ));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.red.withOpacity(0.6)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: const Text(
                          'SEND CODE',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
