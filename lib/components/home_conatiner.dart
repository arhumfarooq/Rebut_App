
// ✅ Fixed HomeContainer Widget
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeConatiner extends StatelessWidget {
  final String images;
  final String text3;
  final String text4;
  final String text5;

  const HomeConatiner({
    super.key,
    required this.images,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(
                  images,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      size: 18,
                      color: Color(0xffFF5858),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text3,
                  style: GoogleFonts.firaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3C3C3C),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  text4,
                  style: GoogleFonts.firaSans(
                    fontSize: 13,
                    color: Color(0xffC1839F),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  text5,
                  style: GoogleFonts.firaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3C3C3C),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}