import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/explore_conatiner/conatiner2.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';
import 'package:lx/components/myorder/order_container.dart';

class MyOrder extends StatelessWidget {
  


  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: SafeArea(child: 
      CustomAppbar2(page: "My Orders",)
      )),
      backgroundColor: Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
          OrderContainer(productImage: "assets/airpods2.png", productName: "Apple AirPods Pro", productPrice: "₹ 8,999", postedDate: "21 Jan 2021")
          
          ],
        ),
      ),
    );
  }
}