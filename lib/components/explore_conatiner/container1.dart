import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainerWidget extends StatelessWidget {
  final String profile;
  final String text1;
  final String text2;
  final IconData icon;
  final String productimage;
  final String title;
  final String subtitle;
  final String price;

  const MyContainerWidget({
    super.key,
    required this.profile,
    required this.text1,
    required this.text2,
    required this.icon,
    required this.productimage,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.50,
      color: const Color(0xffFFFFFF),
      child: Column(
        children: [
          /// Profile Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Profile Image
                Container(
                  height: screenWidth * 0.1,
                  width: screenWidth * 0.1,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profile),
                  ),
                ),

                /// Name and Time
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: GoogleFonts.firaSans(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                      Text(
                        text2,
                        style: GoogleFonts.firaSans(
                          fontSize: screenWidth * 0.032,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff747474),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Trailing Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(icon, size: screenWidth * 0.07),
                ),
              ],
            ),
          ),

          /// Product Image with Background Color and Heart Icon
          Stack(
            children: [
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.35,
                decoration: BoxDecoration(
                  color: const Color(0xffC1839F).withOpacity(0.25),
                ),
                child: Center(
                  child: Image.asset(
                    productimage,
                    fit: BoxFit.fitHeight, // 👈 Poora height le raha image
                    height: screenHeight * 0.35,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.3,
                left: screenWidth * 0.76,
                child: Container(
                  height: screenWidth * 0.1,
                  width: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF5A5F).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 23,
                    color: Color(0xffFF5858),
                  ),
                ),
              ),
            ],
          ),

          /// Title, Subtitle and Price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.05,
                        color: const Color(0xff3C3C3C),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          subtitle,
                          style: GoogleFonts.firaSans(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff747474),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.1),
                        Text(
                          price,
                          style: GoogleFonts.firaSans(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff3C3C3C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
