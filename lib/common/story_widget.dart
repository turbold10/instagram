import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 62,
          height: 62,
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(62 / 2),
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Color(0xffFBAA47),
                Color(0xffD91A46),
                Color(0xffA60F93),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60 / 2),
            ),
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60 / 2),
              child: CachedNetworkImage(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn2Arvtx1Egg-fO48eu312g0unrHN2BjYuig&usqp=CAU',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Text('hello')
      ],
    );
  }
}
