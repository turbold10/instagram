import 'package:flutter/material.dart';
import 'package:flutter_application_2/navbar.dart';
import 'package:flutter_application_2/common/post_widget.dart';
import 'package:flutter_application_2/common/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
              const Navbar(),
              Container(
          height: 90,
          padding: const EdgeInsets.all(4),
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 0.1), top: BorderSide(width: 0.1)),
          ),
          child: SizedBox(
            height: 62,
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const StoryWidget();
              },
            ),
          ),
              ),
              const PostWidget(),
            ])),
        ));
  }
}
