import 'package:flutter/material.dart';
import '../components/section_title.dart';

class ServiceSection extends StatelessWidget {
  final String scrsize;
  const ServiceSection({super.key, required this.scrsize});

  @override
  Widget build(BuildContext context) {
    double t = scrsize == 'f' ? 5 : 15;
    return Container(
      margin: EdgeInsets.fromLTRB(t, 20, 0, 0),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "What We Provide",
            scrsize: scrsize,
          ),
        ],
      ),
    );
  }
}

class TechStacks extends StatelessWidget {
  final String scrsize;
  const TechStacks({super.key, required this.scrsize});

  @override
  Widget build(BuildContext context) {
    double t = scrsize == 'f' ? 5 : 15;
    return Container(
      margin: EdgeInsets.fromLTRB(t, 20, 0, 0),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.blue,
            title: "Tech Stack",
            subTitle: "Our Strong Areas",
            scrsize: scrsize,
          ),
        ],
      ),
    );
  }
}

class RecentWorks extends StatelessWidget {
  final String scrsize;
  const RecentWorks({super.key, required this.scrsize});

  @override
  Widget build(BuildContext context) {
    double t = scrsize == 'f' ? 5 : 15;
    return Container(
      margin: EdgeInsets.fromLTRB(t, 20, 0, 0),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.lightGreen,
            title: "Recent Works",
            subTitle: "What we done",
            scrsize: scrsize,
          ),
        ],
      ),
    );
  }
}

class EnqueryPage extends StatelessWidget {
  final String scrsize;
  const EnqueryPage({super.key, required this.scrsize});

  @override
  Widget build(BuildContext context) {
    double t = scrsize == 'f' ? 5 : 15;
    return Container(
      margin: EdgeInsets.fromLTRB(t, 20, 0, 0),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.yellow,
            title: "Enqure Here",
            subTitle: "If you have projects",
            scrsize: scrsize,
          ),
        ],
      ),
    );
  }
}

class FeedbackClient extends StatelessWidget {
  final String scrsize;
  const FeedbackClient({super.key, required this.scrsize});

  @override
  Widget build(BuildContext context) {
    double t = scrsize == 'f' ? 5 : 15;
    return Container(
      margin: EdgeInsets.fromLTRB(t, 20, 0, 0),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.pink,
            title: "Feedback Received",
            subTitle: "Client's Testimonials that inspired us a lot",
            scrsize: scrsize,
          ),
        ],
      ),
    );
  }
}
