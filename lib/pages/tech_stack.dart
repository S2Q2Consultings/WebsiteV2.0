import 'package:flutter/material.dart';

import '../constants.dart';

class TechstacksW extends StatefulWidget {
  const TechstacksW({super.key});

  @override
  State<TechstacksW> createState() => _TechstacksWState();
}

class _TechstacksWState extends State<TechstacksW> {
  List<Widget> pageChildren(double width) {
    return List.generate(
        techstacks.length, (index) => TechstackCard(index: index));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pageChildren(constraints.biggest.width / 5),
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

class Techstack {
  final int id;
  final String title, image;
  final Color color;

  Techstack(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Techstack> techstacks = [
  Techstack(
    id: 1,
    title: "Business\n Analyst",
    image: "assets/images/graphic.png",
    color: Color.fromARGB(255, 62, 231, 217),
  ),
  Techstack(
    id: 2,
    title: "UIUX ",
    image: "assets/images/ui.png",
    color: Color.fromARGB(255, 168, 231, 102),
  ),
  Techstack(
    id: 3,
    title: "Software\n Consultants",
    image: "assets/images/desktop.png",
    color: Color.fromARGB(255, 238, 207, 148),
  ),
  Techstack(
    id: 4,
    title: "Sales and\n Marketing",
    image: "assets/images/Intreaction_design.png",
    color: Color.fromARGB(255, 234, 153, 153),
  ),
  Techstack(
    id: 4,
    title: "Developers",
    image: "assets/images/developers.png",
    color: Color.fromARGB(255, 236, 127, 180),
  ),
];

class TechstackCard extends StatefulWidget {
  const TechstackCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _TechstackCardState createState() => _TechstackCardState();
}

class _TechstackCardState extends State<TechstackCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 240,
        width: 230,
        decoration: BoxDecoration(
          color: techstacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                techstacks[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            Text(
              techstacks[widget.index].title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
