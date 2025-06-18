import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeapp extends StatelessWidget {
  const CustomHomeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 110, // custom height
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile + Camera Icon
              Stack(
                children: [
                  Container(
                    width: 81,
                    height: 81,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12, width: 2),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/you.png"),
                      radius: 40.5,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 4),
                        ],
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),

              // Greeting
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey Arhum",
                        style: GoogleFonts.firaSans(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3C3C3C),
                        ),
                      ),
                      Text(
                        "Welcome back!",
                        style: GoogleFonts.firaSans(
                          fontSize: 18,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
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
