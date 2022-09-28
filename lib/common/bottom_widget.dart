import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _ButtomWidgetState();
}

class _ButtomWidgetState extends State<BottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border:
            Border(top: BorderSide(width: 0.1)),
      ),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.home, size: 32),
          Icon(Icons.search, size: 32),
          Icon(Icons.add, size: 32),
          Icon(Icons.favorite, size: 32),
          Icon(Icons.person, size: 32)
        ],
      ),
    );
  }
}
