import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({super.key, required this.text, this.onpressed});
  String text;
  VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpressed, child: Text(text));
  }
}
