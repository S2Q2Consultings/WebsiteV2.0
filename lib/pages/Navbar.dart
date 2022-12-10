import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 950 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

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
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Tech",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Career",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.white),
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

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key});

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  var _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isHovering ? _isHovering = false : _isHovering = true;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7.0),
                          color: Colors.white70,
                          child: const Icon(Icons.menu),
                        ),
                        // const SizedBox(height: 5),
                        // Visibility(
                        //   maintainAnimation: true,
                        //   maintainState: true,
                        //   maintainSize: true,
                        //   visible: _isHovering,
                        //   child: Container(
                        //     height: 325,
                        //     width: 325,
                        //     color: Color.fromARGB(255, 0, 0, 0),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const <Widget>[
              //       Text(
              //         "Home",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       SizedBox(
              //         width: 30,
              //       ),
              //       Text(
              //         "About Us",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       SizedBox(
              //         width: 30,
              //       ),
              //       Text(
              //         "Tech",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ],
              //   ),
              // )
            ]),
      ),
    );
  }
}
