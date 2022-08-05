import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {

  final String? placeholder;

  const InputWidget({Key? key,
   this.placeholder
  }) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        text = value;
        setState(() {});
      },
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(width: 0.5, color:Color.fromRGBO(0, 0, 0, 0.1))),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 0.5, color:Color.fromRGBO(0, 0, 0, 0.5))),
        labelText: widget.placeholder,
      ),
    );
  }
}
