import 'package:flutter/material.dart';
import 'package:s2q2_website/pages/LandingPage.dart';
import 'package:s2q2_website/pages/Navbar.dart';
import 'package:s2q2_website/pages/aboutUs.dart';
import 'package:s2q2_website/pages/career.dart';
import 'package:s2q2_website/pages/endPage.dart';
import 'package:s2q2_website/pages/enquirePage.dart';
import 'package:s2q2_website/pages/mySlider.dart';
import 'package:s2q2_website/pages/teamMembers.dart';
import 'package:s2q2_website/pages/tech_stack.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Landing page and nav bar...........................................
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 17, 154, 234),
                      Color.fromARGB(255, 8, 89, 137),
                      Color.fromRGBO(36, 11, 54, 1.0)
                    ]),
              ),
              child: Column(
                children: <Widget>[
                  Navbar(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: LandingPage(),
                  ),
                  Container(
                    child: const AboutUs(),
                  ),
                  // my slider page....................................................
                  Container(
                    child: const MySlider(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //career page........................................................
                  Container(
                    child: const Careers(),
                  ),
                  //techstack page.....................................................
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: TechStack(),
                    ),
                  ),
                  //Enquire page.......................................................
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 147, 200),
                          width: 3.5,
                        ),
                      ),
                      child: const EnquirePage(),
                    ),
                  ),
                  //Our team...........................................................
                  Container(
                    child: const TeamMembers(),
                  ),
                  //End page...........................................................
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromRGBO(36, 11, 54, 1.0)
                          ]),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 30),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(98, 255, 255, 255)),
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
            // About us page.....................................................
          ],
        ),
      ),
    );
  }
}
