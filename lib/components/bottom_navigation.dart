import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
int selectedindex=0;
PageController pageController = PageController();
 void ontap(int index){
 setState(() {
      selectedindex = index;
    });
pageController.jumpToPage(index);
 }


    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          
        ],
      
      
      ),

      // Floating Bottom Nav
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 384,
              height:54,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.home, color: Colors.tealAccent),
                  Icon(Icons.do_not_disturb_on, color: Colors.white70),
                  SizedBox(width: 50), // Space for the FAB
                  Icon(Icons.favorite_border, color: Colors.white70),
                  Icon(Icons.chat_bubble_outline, color: Colors.white70),
                ],
              ),
            ),

            // Floating Camera Button
            Positioned(
              bottom: 3,
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: Icon(Icons.camera_alt, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
