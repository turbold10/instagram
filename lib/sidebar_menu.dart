import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildHeader(),
            BuildMenuItems(),
          ],
        ),
      )
    );
  }
}

class BuildHeader extends StatelessWidget {
  const BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BuildMenuItems extends StatelessWidget {
  const BuildMenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          leading:Icon(Icons.archive_outlined),
          title: Text('Archive'),
        )
      ],
    );
  }
}