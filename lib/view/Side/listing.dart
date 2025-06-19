import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';
import 'package:lx/components/listing_container/list_conatiner.dart';

class Listing extends StatelessWidget {
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: SafeArea(child: 
      CustomAppbar2(page: "My Listings",)
      )),
      backgroundColor: Color(0xffF5F5F5),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    children: [
  
 ListConatiner(productImage: "assets/airpods.png", productName: "Jabra Wireless Earbuds", productPrice: "₹ 8,999", postedDate: "03 May 2021", views: "Views: 1K",)
    ],
  ),
),

    );
  }
}