import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainerWidget2 extends StatelessWidget {
  final String title;
  const MyContainerWidget2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
          width: 95,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xff3C3C3C),
            borderRadius: BorderRadius.circular(12),
      
          ),
          child: Center(
            child: Text(title,
            style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xffE2E2E2)
            
            ),),
          ),
        ),
    );
  }
}