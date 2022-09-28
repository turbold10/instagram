import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final urlImages = [
    'https://images.unsplash.com/photo-1660723610581-01524396c9c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1660749178486-709849194805?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1660729220750-d254bcb246c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1660748308408-f997ade26ef8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 12),
                SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40 / 2),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          fit: BoxFit.cover,
                        ))),
                const SizedBox(width: 8),
                Column(
                  children: const [
                    Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('location')
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_horiz),
            ),
          ],
        ),
        CarouselSlider.builder(
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return BuiilderImage(urlImage: urlImage, index: index);
            },
            itemCount: urlImages.length,
            options: CarouselOptions(height: 400, viewportFraction: 1)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: const [
              SizedBox(width: 12),
              Icon(Icons.favorite_border_outlined, size: 28),
              SizedBox(width: 12),
              Icon(Icons.comment_outlined, size: 28),
              SizedBox(width: 12),
              Icon(Icons.messenger_outline_sharp, size: 28),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.save_as_outlined, size: 28),
          ),
        ]),
        Row(
          children: [
            const SizedBox(width: 16),
            SizedBox(
              width: 20,
              height: 20,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20 / 2),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1660563115496-8040aa23fc81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(width: 8),
            const Text(
              'Liked by craig_love and 44,686 others',
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 6, 8, 0),
          child: Text(
              'joshua_l The game in Japan was amazing and I want to share some photos'),
        )
      ],
    );
  }
}

class BuiilderImage extends StatelessWidget {
  final String? urlImage;
  final int? index;
  const BuiilderImage({Key? key, this.urlImage, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Image.network(
        urlImage ?? '',
        fit: BoxFit.fill,
      ),
    );
  }
}
