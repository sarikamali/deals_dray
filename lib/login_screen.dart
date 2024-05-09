import 'package:flutter/material.dart';
import 'package:flutter_deals_dray/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back_ios_new),
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 180,
                    width: 180,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Let,s Begin!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Please enter your credentials to proceed',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6), fontSize: 15),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          hintText: 'Create Password',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Referral Code (Optional)',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
