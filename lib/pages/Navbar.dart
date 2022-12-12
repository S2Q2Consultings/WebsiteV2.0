import 'package:flutter/material.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(5, 2.3, 14.0, 2.3),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black54),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/newLogo.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "S2Q2 Consulting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    double pos = 650.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    double pos = 1250.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "Services",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    double pos = 1900.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "Tech Stack",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    double pos = 2350.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "Recent Works",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    double pos = 2900.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    double pos = 3650.0;
                    controller!.position.jumpTo(pos);
                  },
                  child: const Text(
                    "Feedbacks",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
