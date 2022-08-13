import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.color = Colors.pink})
      : super(key: key);

  final String text;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(primary: color),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(text),
        ));
  }
}
