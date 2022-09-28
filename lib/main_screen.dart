import 'package:flutter/material.dart';
import 'package:flutter_application_2/add_screen.dart';
import 'package:flutter_application_2/custom_inkwell.dart';
import 'package:flutter_application_2/favorite_screen.dart';
import 'package:flutter_application_2/profile_screen.dart';
import 'package:flutter_application_2/search_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double _bottomPadding = 0.0;
  final PageController _pageController = PageController();

  final List<IconData> _dummyData = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.favorite,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    _bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: _customNavigationBar(),
    );
  }

  Widget _customNavigationBar() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 50 + _bottomPadding,
      padding: EdgeInsets.only(bottom: _bottomPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _dummyData.asMap().entries.map((entry) {
          int idx = entry.key;
          IconData val = entry.value;

          return CustomNavigationItem(
            index: idx,
            iconData: val,
            onClickListener: (selectedIndex) {
              // _pageController.animateToPage(
              //   selectedIndex,
              //   duration: const Duration(milliseconds: 500),
              //   curve: Curves.easeInOut,
              // );
              _pageController.jumpToPage(selectedIndex);
            },
          );
        }).toList(),
      ),
    );
  }
}

class CustomNavigationItem extends StatelessWidget {
  final int? index;
  final IconData? iconData;
  final Function(int)? onClickListener;

  const CustomNavigationItem({
    Key? key,
    this.index,
    this.iconData,
    this.onClickListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomInkWell(
            onTap: () {
              if (onClickListener != null) onClickListener!(index ?? 0);
            },
            child: SizedBox(
              width: 48,
              height: 48,
              child: Icon(
                iconData,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
