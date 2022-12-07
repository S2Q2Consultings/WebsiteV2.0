import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EnquirePage extends StatefulWidget {
  const EnquirePage({super.key});

  @override
  State<EnquirePage> createState() => _EnquirePageState();
}

class _EnquirePageState extends State<EnquirePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          GradientText(
            'Enquire here',
            style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            colors: const [Colors.blue, Color.fromARGB(255, 70, 6, 82)],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 4.0,
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 15, 17, 17),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Name',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.phone),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 4.0,
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 15, 17, 17),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Number',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.people),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 4.0,
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 15, 17, 17),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Company Name',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 4.0,
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 15, 17, 17),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Email',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              maxLines: 7,
              minLines: 1,
              decoration: InputDecoration(
                icon: const Icon(Icons.message),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 4.0,
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.5,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 15, 17, 17),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Message',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  gradient: const LinearGradient(colors: [
                    Colors.blue,
                    Color.fromARGB(255, 101, 18, 115)
                  ])),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
