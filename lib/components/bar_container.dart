import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class side_container extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  const side_container({super.key, required this.icon, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
            Icon(icon,color: Color(0xff5F5F5F),
                  size:50,
            ),
SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
SizedBox(height: 15,),
                Text(text1,style: GoogleFonts.nunitoSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff5F5F5F)
                ),),
                Text(text2,style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5F5F5F)
                ),)
              ],
            )
          ],
         ),


       ),
      );
  }
}