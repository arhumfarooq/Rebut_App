import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lx/view/explore.dart';
import 'package:lx/view/home_Screen.dart';
import 'package:lx/view/liked.dart';
import 'package:lx/view/messages.dart';
import 'package:lx/view_model/navigation_controller.dart';

class BottomNavigation extends StatelessWidget {
  final NavigationController controller = Get.put(NavigationController());

  List<Widget> screenList() {
    return [
      HomeScreen(),
      Explore(),
      Liked(),
      Messages(),
    ];
  }

  final List<IconData> iconsList = [
    Icons.home_outlined,
    Icons.explore_outlined,
    Icons.favorite_border_outlined,
    Icons.message_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final fabSize = screenSize.width * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(() => IndexedStack(
            index: controller.bottom_Navindex.value,
            children: screenList(),
          )),
      floatingActionButton: Container(
        height: fabSize,
        width: fabSize,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 4,
          backgroundColor: Colors.white,
          shape: CircleBorder(
            side: BorderSide(color: Colors.black, width: 4),
          ),
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 26,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xff3C3C3C),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: AnimatedBottomNavigationBar.builder(
              itemCount: iconsList.length,
              tabBuilder: (index, isActive) {
                final color =
                    isActive ? Color(0xff087E8B) : Color(0xffD9D9D9);
                return Container(
                  height: 50,
                  width: 50,
                  decoration: isActive
                      ? BoxDecoration(
                          color: Color(0xff087E8B),
                          shape: BoxShape.circle,
                        )
                      : BoxDecoration(),
                  child: Icon(
                    iconsList[index],
                    size: 24,
                    color: isActive ? Colors.white : color,
                  ),
                );
              },
              activeIndex: controller.bottom_Navindex.value,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.defaultEdge,
              leftCornerRadius: 30,
              rightCornerRadius: 30,
              backgroundColor: Colors.transparent,
              onTap: controller.changeIndex,
              splashColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
