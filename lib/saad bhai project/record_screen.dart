import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/custom_button.dart';
import '../widget/text_field.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            const Text(
              ' Recording',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35),
            ),
            SizedBox(
              height: size.height * 0.4,
            ),
            // CustomTextField(
            //     ab: false, text: "Patient History", controller: controller),
            //     SizedBox(height: size.height*0.1,),
            CustomButton(
              onPressed: () {},
              text: 'Stop',
            )
          ],
        ),
      ),
    );
  }
}
