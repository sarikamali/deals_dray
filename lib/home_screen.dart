import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Deals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/redD.jpeg'),
                                alignment: Alignment.centerLeft),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: '            Search here..',
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.notifications_none,
                      size: 27,
                    ),
                  ],
                ),
              ),
              const Divider(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 185,
                            width: 310,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 93, 4, 90),
                                  Color.fromARGB(255, 111, 23, 126),
                                  Color.fromARGB(255, 133, 18, 10),
                                  Color.fromARGB(255, 101, 3, 3),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Redmi Note 7s',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        '4BMP for everyone',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '20M',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.cyanAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'units',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        'of Redmi Note 7 series sold globally',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'Source Xcore Dore Center August 17,2019',
                                        style: TextStyle(
                                            fontSize: 7,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Now on No Cost EMI*',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'From ru.9,999',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsetsDirectional
                                            .symmetric(vertical: 3),
                                        width: 90,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 93, 4, 90),
                                              Color.fromARGB(255, 111, 23, 126),
                                            ],
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                                spreadRadius: 1,
                                                color: Colors.white)
                                          ],
                                        ),
                                        child: const Text(
                                          'BUY NOW',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Image.asset(
                                    'assets/images/redmi2.png',
                                    cacheHeight: 135,
                                    cacheWidth: 120,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 185,
                            width: 310,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 93, 4, 90),
                                  Color.fromARGB(255, 111, 23, 126),
                                  Color.fromARGB(255, 133, 18, 10),
                                  Color.fromARGB(255, 101, 3, 3),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Redmi Note 7s',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        '4BMP for everyone',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '20M',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.cyanAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'units',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        'of Redmi Note 7 series sold globally',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'Source Xcore Dore Center August 17,2019',
                                        style: TextStyle(
                                            fontSize: 7,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Now on No Cost EMI*',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'From ru.9,999',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsetsDirectional
                                            .symmetric(vertical: 3),
                                        width: 90,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 93, 4, 90),
                                              Color.fromARGB(255, 111, 23, 126),
                                            ],
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                                spreadRadius: 1,
                                                color: Colors.white)
                                          ],
                                        ),
                                        child: const Text(
                                          'BUY NOW',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Image.asset(
                                    'assets/images/redmi2.png',
                                    cacheHeight: 135,
                                    cacheWidth: 120,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 185,
                            width: 310,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 93, 4, 90),
                                  Color.fromARGB(255, 111, 23, 126),
                                  Color.fromARGB(255, 133, 18, 10),
                                  Color.fromARGB(255, 101, 3, 3),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Redmi Note 7s',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        '4BMP for everyone',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      const SizedBox(
                                        height: 9,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '20M',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.cyanAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'units',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        'of Redmi Note 7 series sold globally',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'Source Xcore Dore Center August 17,2019',
                                        style: TextStyle(
                                            fontSize: 7,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Now on No Cost EMI*',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      const Text(
                                        'From ru.9,999',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsetsDirectional
                                            .symmetric(vertical: 3),
                                        width: 90,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 93, 4, 90),
                                              Color.fromARGB(255, 111, 23, 126),
                                            ],
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                                spreadRadius: 1,
                                                color: Colors.white)
                                          ],
                                        ),
                                        child: const Text(
                                          'BUY NOW',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Image.asset(
                                    'assets/images/redmi2.png',
                                    cacheHeight: 135,
                                    cacheWidth: 120,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 360,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0XFF6E44FF).withOpacity(0.6),
                      const Color(0XFF6E44FF),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'KYC Pending',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'You need to provide the required',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'documents for your account activation.',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Click Here',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            const Color(0XFF6E44FF).withOpacity(0.7),
                        child: const Icon(
                          Icons.mobile_screen_share,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Mobile',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green.withOpacity(0.7),
                        child: const Icon(
                          Icons.laptop_chromebook,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Laptop',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.pink.withOpacity(0.7),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Camera',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orange.withOpacity(0.7),
                        child: const Icon(
                          Icons.lightbulb_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Led',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 410,
                  width: 445,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 24, 108, 108),
                        Colors.cyanAccent,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          children: [
                            Text(
                              'EXCLUSIVE FOR YOU',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height: 23,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text(
                                      '32% Off',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(
                                    'assets/images/nokia.webp',
                                  ),
                                  height: 170,
                                  alignment: Alignment.topCenter,
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Nokia 8.1 (iron,64 GB)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height: 23,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text(
                                      '14% Off',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(
                                    'assets/images/redmi.webp',
                                  ),
                                  height: 170,
                                  alignment: Alignment.topCenter,
                                ),
                                const SizedBox(
                                  height: 65,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Redmi Multiple Colors ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Blue (redmi,75 GB)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Stack(
                      //   alignment: Alignment.bottomRight,
                      //   children: [
                      //     Positioned(
                      //         bottom: 0,
                      //         child: Container(
                      //           height: 20,
                      //           width: 40,
                      //           color: Colors.red,
                      //         )),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
