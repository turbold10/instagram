import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_2/common/story_widget.dart';
import 'package:flutter_application_2/common/user_post_widget.dart';
import 'package:flutter_application_2/controller/api_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ApiController _apiController = Get.put(ApiController());

  @override
  void initState() {
    _apiController.fetchUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            Row(
              children: [
                const Icon(Icons.lock),
                Obx(() {
                  return Text(
                    _apiController.userInfo['username'] ?? 'Jacob_W',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  );
                }),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 90,
              height: 90,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80 / 2),
                  border: Border.all(
                    color: const Color(0xffC7C7CC),
                  )),
              child: SizedBox(
                width: 86,
                height: 86,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(86 / 2),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1660548311281-61e57dad92e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: const [
                Text('54',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Text('posts',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
              ],
            ),
            Column(
              children: const [
                Text('834',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Text('followers',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
              ],
            ),
            Column(
              children: const [
                Text('162',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Text('following',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
              ],
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Jacob West',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
              Text('Digital goodies designer @pixsellz'),
              Text('Everything is designed.'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: MaterialButton(
            onPressed: () {},
            minWidth: double.infinity,
            child: const Text('Edit Profile'),
          ),
        ),
        Container(
          height: 86,
          margin: const EdgeInsets.only(bottom: 12),
          width: double.infinity,
          child: ListView.builder(
              itemCount: 6,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => const StoryWidget())),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.grid_on, size: 32),
            Icon(Icons.person_pin, size: 32),
          ],
        ),
        Expanded(
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return const UserPostWidget();
                }))
      ],
    ));
  }
}
