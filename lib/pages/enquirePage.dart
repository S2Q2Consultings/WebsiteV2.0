import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class EnquirePage extends StatefulWidget {
  const EnquirePage({super.key});

  @override
  State<EnquirePage> createState() => _EnquirePageState();
}

class _EnquirePageState extends State<EnquirePage> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final body = TextEditingController();
    final name = TextEditingController();
    final number = TextEditingController();
    final companyName = TextEditingController();
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            // color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.77,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.6,
                ),
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white70),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: GradientText(
              'We are a group of focused, dedicated and proficient developers who convert needs into solutions. If you think you have the same view, share yourdetails here',
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              gradientDirection: GradientDirection.ltr,
              colors: const [Colors.blue, Color.fromARGB(255, 70, 6, 82)],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              controller: name,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
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
                    color: Colors.black,
                    width: 2.3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Name',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              controller: number,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
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
                    color: Colors.black,
                    width: 2.3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Number',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              controller: companyName,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.people,
                  color: Colors.black,
                ),
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
                    color: Colors.black,
                    width: 2.3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter Company Name',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              controller: email,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.email,
                  color: Colors.black,
                ),
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
                    color: Colors.black,
                    width: 2.3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Email',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: TextFormField(
              controller: body,
              cursorColor: Colors.black,
              maxLines: 7,
              minLines: 1,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.message,
                  color: Colors.black,
                ),
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
                    color: Colors.black,
                    width: 2.3,
                    style: BorderStyle.solid,
                    strokeAlign: StrokeAlign.inside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                labelText: 'Enter your Message',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              String? encodeQueryParameters(Map<String, String> params) {
                return params.entries
                    .map((MapEntry<String, String> e) =>
                        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                    .join('&');
              }

              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: email.text,
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Enquiry',
                  'body':
                      '${name.text} \n${number.text} \n${companyName.text} \n${body.text}  ',
                }),
              );
              launchUrl(emailLaunchUri);
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Enquiry Sent Successfully!'),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2.6,
                ),
              ),
              child: GradientText(
                "Submit",
                colors: const [Colors.blue, Color.fromARGB(255, 70, 6, 82)],
                style: const TextStyle(
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
