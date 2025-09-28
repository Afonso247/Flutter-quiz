import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String customText;
  final void Function() customFunction;

  const CustomButton({
    super.key,
    required this.customText,
    required this.customFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 68, 18, 85),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: customFunction,
        child: Text(customText, textAlign: TextAlign.center),
      ),
    );
  }
}
