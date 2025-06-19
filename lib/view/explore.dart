import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/explore_conatiner/conatiner2.dart';
import 'package:lx/components/explore_conatiner/container1.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';
import 'package:lx/components/search_container.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: SafeArea(child: 
      CustomAppbar2(page: "Explore",)
      )),
      backgroundColor: Color(0xffF5F5F5),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SafeArea(
      child: Column(
        children: [
      SearchContainer(
        width1: 377,
      ),

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
          MyContainerWidget2(title: "Books"),SizedBox(width: 10,),
          MyContainerWidget2(title: "Game"),SizedBox(width: 10,),
          MyContainerWidget2(title: "Music"),SizedBox(width: 10,),
          MyContainerWidget2(title: "Camera"),SizedBox(width: 10,),
            ],
          ),
        ),
      ),
      
          SizedBox(height: 20,),
      MyContainerWidget(profile: "assets/man2.png", text1: "Cliff Hanger", text2: "El Dorado", icon: Icons.more_vert, productimage: "assets/4.png", title: "Cordoba Mini Guitar", subtitle: "Make: Cordoba | Year: 2020", price: "₹ 25,000"),
         SizedBox(height: 10,),
         
      MyContainerWidget(profile: "assets/3.png", text1: "Frank N. Stein", text2: 
      "Shangri La", icon: Icons.more_vert, productimage: "assets/iphone.png", title: "IPhone Xs", subtitle: "Make: Cordoba | Year: 2020", price: "₹ 45,000")
      
      
      
      
        ],
      ),
    ),
  ),
),

    );
  }
}