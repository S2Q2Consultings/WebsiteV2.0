import 'package:flutter/material.dart';

class RecentWork extends StatefulWidget {
  const RecentWork({super.key});

  @override
  State<RecentWork> createState() => _RecentWorkState();
}

class _RecentWorkState extends State<RecentWork> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
        // alignment: Alignment.bottomRight,
        width: 450,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 2.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // backgroundColor: Colors.,
              child: Image.asset(
                'assets/images/work_1.png',
                height: 300,
                width: 150,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Text(
                  'US Based Startup for Clubs and Restaurants, for which we have build IoS App.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  // maxLines: 1,
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
        // alignment: Alignment.bottomRight,
        width: 450,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 2.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // backgroundColor: Colors.,
              child: Image.asset(
                'assets/images/work_3.png',
                height: 300,
                width: 150,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Text(
                  'A Startup based at IIT Bombay that works in the Medical Science.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  // maxLines: 1,
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
        // alignment: Alignment.bottomRight,
        width: 450,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 2.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // backgroundColor: Colors.,
              child: Image.asset(
                'assets/images/work_4.png',
                height: 300,
                width: 150,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Text(
                  'A FinTech marketplace with excellent financial offers on Loan, Insurance and Credit Cards.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  // maxLines: 1,
                ),
              ),
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1400) {
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
