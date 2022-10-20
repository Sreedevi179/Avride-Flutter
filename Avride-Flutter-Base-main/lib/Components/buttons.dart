
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      onPrimary: Colors.white,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
    ),
    child: Text(text),
    onPressed: onClicked,
  );
}