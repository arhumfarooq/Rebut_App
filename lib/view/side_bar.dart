import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class   SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffF5F5F5),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    
    children: [
      SizedBox(height: 74,),
      Container(
        width: 346,
        height: 88,
       decoration: BoxDecoration(
         color: Color(0xffD4E4E6),
         borderRadius: BorderRadius.circular(22)
       ),
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Row(
          children: [
            Icon(Icons.person_outline_rounded,color: Color(0xff5F5F5F),
                  size:40,
            ),

            Column(
              children: [
                Text("My Accounts",style: GoogleFonts.nunitoSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff5F5F5F)
                ),),
                Text("Edit you details, account settings",style: GoogleFonts.roboto(
                  
                ),)
              ],
            )
          ],
         ),


       ),
      )
    ],
  ),
),
    );
  }
}