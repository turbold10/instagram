import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: const Icon(Icons.photo_camera)),
        Image.asset(
          './lib/assets/images/logo.png',
          width: 150,
          height: 35,
        ),
        Row(
          children: const [
            Icon(Icons.tv),
            SizedBox(width:12),
            Icon(Icons.message),
            SizedBox(width: 8)
          ],
        )
      ],
    );
  }
}