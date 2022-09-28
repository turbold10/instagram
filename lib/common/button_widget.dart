import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? login;

  const ButtonWidget({
    Key? key,
    this.text,
    this.login,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.blue,
      onPressed: widget.login,
      child: Text(
        widget.text!,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
