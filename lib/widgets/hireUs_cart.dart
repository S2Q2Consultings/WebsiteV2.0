import 'package:flutter/material.dart';
import '../constants.dart';

class HireMe extends StatelessWidget {
  const HireMe({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return const HireMeCard();
        } else {
          return const MobileCart();
        }
      },
    );
  }
}

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [bDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 60,
            width: 60,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Starting New Project?",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 3),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 1.5,
                horizontal: kDefaultPadding,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Color.fromARGB(255, 57, 227, 249),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset("assets/images/hand.png", height: 40),
                const SizedBox(width: kDefaultPadding),
                const Text(
                  "Hire Us!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileCart extends StatelessWidget {
  const MobileCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 10, 10, 10),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.95),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [bDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 27,
            width: 27,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 20,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Starting New Project?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 3),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 1.5,
                horizontal: kDefaultPadding,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Color.fromARGB(255, 57, 227, 249),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset("assets/images/hand.png", height: 20),
                const SizedBox(width: kDefaultPadding),
                const Text(
                  "Hire Us!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
