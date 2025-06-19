import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/bottom_navigation.dart';
import 'package:lx/components/custom_homeapp.dart';
import 'package:lx/components/home_conatiner.dart';
import 'package:lx/components/search_container.dart';
import 'package:lx/models/home/homelist.dart';
import 'package:lx/models/home/home2._list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
    preferredSize: Size.fromHeight(120),
    child: SafeArea(child: CustomHomeapp()),
  ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
              // physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                /// 🔍 Search Box
                const SizedBox(height: 10),
                SearchContainer(
                  width1: 359,
                ),
                const SizedBox(height: 25),
                
                /// 🆕 New Arrivals Title
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
                
                const SizedBox(height: 15),
                
                /// 📦 New Arrivals List
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                     physics: BouncingScrollPhysics(),
                    itemCount: newlist.length,
                    shrinkWrap: true, // ✅ fix
            
                    itemBuilder: (context, index) {
                      final item = newlist[index];
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == newlist.length - 1 ? 0 : 20,
                        ),
                        child: HomeConatiner(
                          images: item.image,
                          text3: item.title,
                          text4: item.subtitle,
                          text5: item.price,
                        ),
                      );
                    },
                  ),
                ),
                
                const SizedBox(height: 30),
                
                /// 👀 Recently Viewed Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently viewed",
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
                
                const SizedBox(height: 15),
                
                /// 🕓 Recently Viewed List
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: newlist2.length,
                    
                    itemBuilder: (context, index) {
                      final item = newlist2[index];
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == newlist2.length - 1 ? 0 : 20,
                        ),
                        child: HomeConatiner(
                          images: item.image,
                          text3: item.title,
                          text4: item.subtitle,
                          text5: item.price,
                        ),
                      );
                    },
                  ),
                ),
                
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
     
      );
    
  }
}
