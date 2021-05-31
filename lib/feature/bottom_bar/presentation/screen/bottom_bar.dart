import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/feature/cart/presentation/screen/cart_screen.dart';
import 'package:house_of_pets/feature/forum/presentation/screen/forum_screen.dart';
import 'package:house_of_pets/feature/home/presentation/screen/home_screen.dart';
import 'package:house_of_pets/feature/schedule/presentation/screen/schedule_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  BottomNavbarScreen({Key key}) : super(key: key);

  @override
  _BottomNavbarScreenState createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomeScreen(),
            ScheduleScreen(),
            ForumScreen(),
            CartScreen()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: DSColor.primaryPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            icon: Icon(Icons.pending_actions_outlined),
            title: Text('Schedule'),
            activeColor: DSColor.primaryPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            icon: Icon(Icons.forum_rounded),
            title: Text('Forum'),
            activeColor: DSColor.primaryPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            icon: Icon(Icons.shopping_cart_rounded),
            title: Text('Cart'),
            activeColor: DSColor.primaryPurple,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
