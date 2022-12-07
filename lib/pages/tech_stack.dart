import 'package:flutter/material.dart';
import 'package:s2q2_website/constants.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    Row myRow(String text, String image) {
      return Row(
        children: [
          const CircleAvatar(
            radius: 3.5,
            backgroundColor: Colors.black,
          ),
          const SizedBox(width: 20),
          Container(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            child: Image.asset(
              image,
              width: 100,
            ),
          ),
        ],
      );
    }

    List<Widget> pageChildren(double width) {
      return <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myRow('Software Consultants', 'assets/images/sC.png'),
            const SizedBox(height: 60),
            myRow('UIUX', 'assets/images/sC.png'),
            const SizedBox(height: 60),
            myRow('Developers', 'assets/images/sC.png'),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            myRow('Business Analyst', 'assets/images/sC.png'),
            const SizedBox(height: 60),
            myRow('Sales and Marketing', 'assets/images/sC.png'),
          ],
        ),
      ];
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: newColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
              border: Border.all(
                color: primaryColor,
                width: 3,
              ),
            ),
            child: const Text(
              'Tech Stack',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 900) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageChildren(constraints.biggest.width / 2),
                );
              } else {
                return Column(
                  children: pageChildren(constraints.biggest.width),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
