import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Rounded nav background container
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF3C3C3C),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home_outlined, 0),
                _buildNavItem(Icons.explore_outlined, 1),
                const SizedBox(width: 56),
                _buildNavItem(Icons.favorite_border, 2),
                _buildNavItem(Icons.chat_bubble_outline, 3),
              ],
            ),
          ),

          // Floating camera button
          Positioned(
            bottom: 12,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xff3C3C3C),
                  width: 2.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xff3C3C3C),
                  size: 25,
                ),
                onPressed: () {
                  // camera action
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        width: 66,
        height: 41,
        padding: const EdgeInsets.all(10),
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0xFF087E8B),
                borderRadius: BorderRadius.circular(22),
              )
            : null,
        child: Icon(
          icon,
          size: 24,
          color: isSelected ? Colors.white : Colors.white70,
        ),
      ),
    );
  }
}
