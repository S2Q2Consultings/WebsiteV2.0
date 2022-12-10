import 'package:flutter/material.dart';
import 'package:s2q2_website/widgets/expe_cart.dart';

import '../constants.dart';

class AboutUs1 extends StatefulWidget {
  const AboutUs1({super.key});

  @override
  State<AboutUs1> createState() => _AboutUs1State();
}

class _AboutUs1State extends State<AboutUs1> {
  TextSpan myBoldText(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: primaryFontColor,
      ),
    );
  }

  TextSpan mySimpleText(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    );
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About Us",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                // color: newColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              width: width * 0.9,
              child: const Text(
                'We build simple, satisfactory, quick and quality products for our clients in different domains. We have a team of proficient developers who work on the projects while they are live and also provide services afterwards too. Our services include domain Like Application development, Web development, Software Development, Data Management,Cloud Infrastructure, Blockchain as Service, Software as a Service, Platform as a Service and Cross-Platform Integrations too. Our company and the employees believe strongly in the following 4 values:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
        child: const ExperienceCard(numOfExp: "03"),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
        child: RichText(
          text: TextSpan(
            children: [
              myBoldText('1. SIMPLE  '),
              mySimpleText('solution which are easy to use and manage.  \n\n'),
              myBoldText('2. SATISFACTORY  '),
              mySimpleText('clients\n\n'),
              myBoldText('3. QUICK  '),
              mySimpleText('delivery according to the need.\n\n'),
              myBoldText('4. QUALITY  '),
              mySimpleText('should never be compromised\n\n'),
            ],
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
