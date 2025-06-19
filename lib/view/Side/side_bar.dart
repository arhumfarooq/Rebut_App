import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/bar_container.dart';

class   SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(
   leadingWidth: screenWidth * (125/ 360),
backgroundColor: Color(0xffF5F5F5),
  leading:  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
                "ReBuy",
                style: GoogleFonts.dosis(
                  fontWeight: FontWeight.w800,
                  fontSize: screenWidth * 0.09, // ~32
                  color: const Color(0xff3C3C3C),
                ),
              ),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Icon(Icons.close_outlined,
                    size: screenWidth * (33 / 360), // Corrected icon size
      
      color: Color(0xff3C3C3C),
      ),
    )
  ],
),


backgroundColor: Color(0xffF5F5F5),
body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 74,),
         side_container(icon: Icons.person_outlined, text1: "My Account", text2: "Edit you details, account settings"),
         SizedBox(height: 20,),
         side_container(icon: Icons.shopping_bag_outlined, text1: "My Orders", text2: "View all your orders"),
          SizedBox(height: 20,),
         side_container(icon: Icons.format_list_bulleted_outlined, text1: "My Listings", text2: "View your product listing for sale"),
          SizedBox(height: 20,),
         side_container(icon: Icons.favorite_outline_sharp, text1: "Liked Items", text2: "See the products you have wishlisted"),
         SizedBox(height: 46,),
         Row(
           children: [
             Container(width: 165,
             height: 44,
             
             decoration: BoxDecoration(
             color: Color(0xffF5F5F5),
             borderRadius: BorderRadius.circular(12),
             border: Border.all(
               color: Color(0xff3C3C3C),
               width: 2
             ),
             
             ),
             child: Center(
               child: Text("Feedback",style: GoogleFonts.firaSans(
               color: Color(0xff3C3C3C),fontSize: 18,fontWeight: FontWeight.w500
               
               ),),
             ),
             
             ),
    SizedBox(width: 16,),
              Container(width: 165,
             height: 44,
             
             decoration: BoxDecoration(
             color: Color(0xff3C3C3C),
             borderRadius: BorderRadius.circular(12),
             border: Border.all(
               color: Color(0xff3C3C3C),
               width: 2
             ),
             
             ),
             child: Center(
               child: Text("Sign out",style: GoogleFonts.firaSans(
               color: Color(0xffF5F5F5),fontSize: 18,fontWeight: FontWeight.w500
               
               ),),
             ),
             
             ),
    
    
             
           ],
         ),

        ],
      ),
    ),
    SizedBox(height: 75.5,),
    Image.asset("assets//Waves.png")
  ],
),
    );
  }
}