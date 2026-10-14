import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({super.key, required this.text, this.onTap});
  String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text, style: Theme.of(context).textTheme.displaySmall),
    );
  }
}
