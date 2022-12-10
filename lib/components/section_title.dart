import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  final String title, subTitle, scrsize;
  final Color color;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.scrsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            padding: EdgeInsets.only(bottom: 72),
            width: scrsize == 'f' ? 8 : 5,
            height: scrsize == 'f' ? 100 : 60,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style: TextStyle(
                    fontSize: scrsize == 'f' ? 20 : 12,
                    fontWeight: FontWeight.w200,
                    color: kTextColor),
              ),
              Text(title,
                  style: TextStyle(
                    fontSize: scrsize == 'f' ? 56 : 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
