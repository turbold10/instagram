import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class UserPostWidget extends StatefulWidget {
  const UserPostWidget({Key? key}) : super(key: key);

  @override
  State<UserPostWidget> createState() => _UserPostWidgetState();
}

class _UserPostWidgetState extends State<UserPostWidget> {
  @override
  Widget build(BuildContext context) {
    return(
      Container(
        width: 120,
        height: 120,
        padding: const EdgeInsets.all(1),
        child: CachedNetworkImage(imageUrl: 'https://images.unsplash.com/photo-1660677727122-ba176d2484eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
        placeholder: (context, url) => const CircularProgressIndicator(),
        fit: BoxFit.fill
        ),
      )
    );
  }
}