import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar2 extends StatelessWidget {
  final String page;
  const CustomAppbar2({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Color(0xffF5F5F5),
      flexibleSpace: 
      SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Profile + Camera Icon
                Container(
              width: screenWidth * (46 / 360),
              height: screenWidth * (46 / 360),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff555555)),
                borderRadius: BorderRadius.circular(screenWidth * 0.033),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: screenWidth * 0.045,
                ),
                onPressed: () {},
              ),
            ),
       
                // Greeting
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40),
                    child: Text(
                      page,
                      style: GoogleFonts.firaSans(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3C3C3C),
                      ),
                    ),
                  ),
                ),
       
                // Menu Icon
                const Icon(
                  Icons.menu,
                  size: 32,
                  color: Color(0xff3C3C3C),
                ),
              ],
            ),
          ),
        ),
     );
  }
}