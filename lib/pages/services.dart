import 'package:flutter/material.dart';
import 'package:s2q2_website/constants.dart';

class OurServices extends StatefulWidget {
  const OurServices({super.key});

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Column(
        children: List.generate(
            OurServicess1.length, (index) => OurServiceCard(index: index)),
      ),
      Column(
        children: List.generate(
            OurServicess2.length, (index) => OurServiceCard2(index: index)),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 937) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pageChildren(constraints.biggest.width / 2),
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

class OurService {
  final String name, sPic;
  final int id;
  final Color color;

  OurService(
      {required this.name,
      required this.sPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<OurService> OurServicess1 = [
  OurService(
    id: 1,
    name: "Enterprise Applications",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 62, 231, 217),
  ),
  OurService(
    id: 2,
    name: "Software Solutions",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 168, 231, 102),
  ),
  OurService(
    id: 3,
    name: "Business Digitization",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 238, 207, 148),
  ),
  OurService(
    id: 4,
    name: "Cyber Security",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 234, 153, 153),
  ),
  OurService(
    id: 5,
    name: "Cloud Technology",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 236, 127, 180),
  ),
];

List<OurService> OurServicess2 = [
  OurService(
    id: 1,
    name: "Blockchain",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 62, 231, 217),
  ),
  OurService(
    id: 2,
    name: "Automation and AI",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 168, 231, 102),
  ),
  OurService(
    id: 3,
    name: "Analytics and Insight",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 238, 207, 148),
  ),
  OurService(
    id: 4,
    name: "Client Support",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 234, 153, 153),
  ),
  OurService(
    id: 5,
    name: "Data Management",
    sPic: "assets/images/people.png",
    color: Color.fromARGB(255, 236, 127, 180),
  ),
];

class OurServiceCard extends StatefulWidget {
  const OurServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _OurServiceCardState createState() => _OurServiceCardState();
}

class _OurServiceCardState extends State<OurServiceCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          hoverColor: Colors.transparent,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: duration,
            // margin: EdgeInsets.only(top: kDefaultPadding * 3),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 450,
            decoration: BoxDecoration(
              color: OurServicess1[widget.index].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: ListTile(
              leading: Image.asset(
                OurServicess1[widget.index].sPic,
                width: 40,
                height: 40,
              ),
              title: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  OurServicess1[widget.index].name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class OurServiceCard2 extends StatefulWidget {
  const OurServiceCard2({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _OurServiceCard2State createState() => _OurServiceCard2State();
}

class _OurServiceCard2State extends State<OurServiceCard2> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          hoverColor: Colors.transparent,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: duration,
            // margin: EdgeInsets.only(top: kDefaultPadding * 3),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 450,
            decoration: BoxDecoration(
              color: OurServicess2[widget.index].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: ListTile(
              leading: Image.asset(
                OurServicess2[widget.index].sPic,
                width: 40,
                height: 40,
              ),
              title: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  OurServicess2[widget.index].name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
