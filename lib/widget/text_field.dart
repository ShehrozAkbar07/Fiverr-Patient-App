import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final int? maxlines;
  final bool? ab;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomTextField(
      {Key? key,
      required this.text,
      this.maxlines,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon,
      required this.ab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ab!,
      textAlign: TextAlign.left,
      keyboardType: keyboardType,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        // fillColor: const Color(AppColors.fillColor),
        filled: true,

        prefixIcon: prefixIcon,

        // maxLines: maxlines,

        hintText: text,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 34, 29, 29)),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Color.fromARGB(255, 87, 52, 52).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Color.fromARGB(255, 82, 49, 49).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Color.fromARGB(255, 105, 57, 57).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
