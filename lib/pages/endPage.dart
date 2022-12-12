import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EndPage extends StatefulWidget {
  const EndPage({super.key});

  @override
  State<EndPage> createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          children: [
            const Text(
              "Industries",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Banking & Financial Servides",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Consumer Goods & Distribution",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Communication Media",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Educational Technology",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Manufactureing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Public Services",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Travel, Transportation",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Life Science & Healthcare",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Hospitality",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Technology",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        width: width,
        child: Column(
          children: [
            const Text(
              "Services",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Enterprise Application",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Software Development",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Business Consulting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Cyber Security",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Cloud Technology",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Blockchain",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Automation and AI",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Analytics and Insights",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Salesforce Support",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Data Management",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        width: width,
        child: Column(
          children: [
            const Text(
              "Connect With Us",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(98, 255, 255, 255)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            html.window.open(
                                'https://twitter.com/s2q2_c/status/1597301150881316865?s=48&t=EjQhTzE7hqLK-zz2Y2W1BA',
                                '_self');
                          },
                          child: Image.asset(
                            "assets/images/twitter.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            html.window
                                .open('http://shorturl.at/irABY', '_self');
                          },
                          child: Image.asset(
                            "assets/images/linkedin.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            html.window.open(
                                'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgzGrbHngzzwnlSTPCQppwmCXxZTq?compose=new',
                                '_self');
                          },
                          child: Image.asset(
                            "assets/images/gmail.jpg",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "s2q2.admin@s2q2.com",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "+91 9518523179  (M)",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "+91 9146901939  (M)",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 3),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
