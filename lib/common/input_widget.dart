import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String? placeholder;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const InputWidget({
    Key? key,
    this.onChanged,
    this.placeholder,
    this.onSubmitted,
  }) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.1))),
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.5))),
        labelText: widget.placeholder,
      ),
    );
  }
}
