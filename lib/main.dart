import 'package:flutter/material.dart';
import 'package:s2q2_website/constants.dart';
import 'package:s2q2_website/pages/LandingPage.dart';
import 'package:s2q2_website/pages/Navbar.dart';
import 'package:s2q2_website/pages/aboutUs.dart';
import 'package:s2q2_website/pages/endPage.dart';
import 'package:s2q2_website/pages/enquirePage.dart';
import 'package:s2q2_website/pages/feedback.dart';
import 'package:s2q2_website/pages/recent_work.dart';
import 'package:s2q2_website/pages/services.dart';
import 'package:s2q2_website/pages/tech_stack.dart';
import 'package:s2q2_website/widgets/heading.dart';
import 'package:s2q2_website/widgets/hireUs_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 's2q2 website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  ScrollController? controller;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
          elevation: 5.0,
          shape: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(14, 2.3, 10, 2.3),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/newLogo.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "S2Q2 Consulting",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text("About Us"),
                onTap: () {
                  double pos = 850.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text("Services"),
                onTap: () {
                  double pos = 1900.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text("Tech Stack"),
                onTap: () {
                  double pos = 2980.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text("Recent Works"),
                onTap: () {
                  double pos = 4780.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text("Contact Us"),
                onTap: () {
                  double pos = 5680.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text("Feedbacks"),
                onTap: () {
                  double pos = 6650.0;
                  controller!.position.jumpTo(pos);
                },
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          )),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //Landing page and nav bar...........................................
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 73, 183, 246),
                          Color.fromARGB(255, 17, 154, 234),
                          Color.fromARGB(255, 8, 89, 137),
                          Color.fromRGBO(36, 11, 54, 1.0)
                        ]),
                    boxShadow: [kDefaultShadow],
                  ),
                  child: Column(
                    children: <Widget>[
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 1200) {
                            return DesktopNavBar(controller: controller);
                          } else {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              child: Container(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 2.3, 14.0, 2.3),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: Colors.black54),
                                            child: Row(
                                              children: const [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'assets/images/newLogo.png'),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "S2Q2 Consulting",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _globalKey.currentState!.openDrawer();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(7.0),
                                          color: Colors.white70,
                                          child: const Icon(Icons.menu),
                                        ),
                                      ),
                                    ]),
                              ),
                            );
                          }
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 5),
                        child: LandingPage(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        height: 2,
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.88,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AboutUs1(),
                      const SizedBox(
                        height: 75,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 241, 254)
                        .withOpacity(0.3),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bg_img_2.png"),
                    ),
                  ),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -40),
                        child: const HireMe(),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 800) {
                            return const ServiceSection(
                              scrsize: "f",
                            );
                          } else {
                            return const ServiceSection(
                              scrsize: "s",
                            );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const OurServices(),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 800) {
                            return const TechStacks(
                              scrsize: "f",
                            );
                          } else {
                            return const TechStacks(
                              scrsize: "s",
                            );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TechstacksW(),
                      const SizedBox(
                        height: 15,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 800) {
                            return const RecentWorks(
                              scrsize: "f",
                            );
                          } else {
                            return const RecentWorks(
                              scrsize: "s",
                            );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const RecentWork(),
                      const SizedBox(
                        height: 40,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 800) {
                            return const EnqueryPage(scrsize: "f");
                          } else {
                            return const EnqueryPage(scrsize: "s");
                          }
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.87,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 147, 200),
                            width: 3.5,
                          ),
                        ),
                        child: const EnquirePage(),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 800) {
                            return const FeedbackClient(scrsize: "f");
                          } else {
                            return const FeedbackClient(scrsize: "s");
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Clientfeedback(),
                    ],
                  ),
                ),
                //End page...........................................................
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          // Color.fromARGB(255, 0, 0, 0),
                          Color.fromRGBO(36, 11, 54, 1.0)
                        ]),
                    boxShadow: [eDefaultShadow],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(98, 255, 255, 255),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset("assets/images/S2Qq2.png"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "S2Q2 Consulting",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 5,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const EndPage(),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 5,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          "@ 2022 S2Q2 Consulting Private Limited. All Rights Reserved.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
