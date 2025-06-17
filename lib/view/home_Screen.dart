import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/home_conatiner.dart';
import 'package:lx/models/homelist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New arrivals",
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3C3C3C),
                    ),
                  ),
                  Text(
                    "View more",
                    style: GoogleFonts.firaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff898989),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 10),

              /// Scrollable Row using ListView
              SizedBox(
                height: 270, // Required for horizontal scroll
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newlist.length,
                  itemBuilder: (context, index){

final item = newlist[index];
return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: HomeConatiner(
          images: item.image,
          text3: item.title,
          text4: item.subtitle,
          text5: item.price,
        ),
      );


                  })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
