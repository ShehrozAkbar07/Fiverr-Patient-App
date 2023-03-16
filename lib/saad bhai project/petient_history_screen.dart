import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pateint_app/saad%20bhai%20project/record_screen.dart';

import '../widget/custom_button.dart';
import '../widget/text_field.dart';

class PatientHistoryScreen extends StatefulWidget {
  const PatientHistoryScreen({super.key});

  @override
  State<PatientHistoryScreen> createState() => _PatientHistoryScreenState();
}

class _PatientHistoryScreenState extends State<PatientHistoryScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.5,
            ),
            CustomTextField(
                ab: false, text: "Patient History", controller: controller),
            SizedBox(
              height: size.height * 0.1,
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecordingScreen()));
              },
              text: 'Submit',
            )
          ],
        ),
      ),
    );
  }
}
