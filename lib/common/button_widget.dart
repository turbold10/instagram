import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? text;

  const ButtonWidget({Key? key, this.text}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.blue,
      child: Text(widget.text!,
        style: TextStyle(
          color: Colors.white
        ),
      ),
      onPressed: () {
        print('Pressed');
      },
    );
  }
}
