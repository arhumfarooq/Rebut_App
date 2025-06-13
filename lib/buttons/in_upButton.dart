import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inButton extends StatelessWidget {
  final String text;
  const inButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap: () {
    
  },
  child: Container(
    width: 344,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      gradient: LinearGradient(
        
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
  
  Color(0xffFF5A5F),
  Color(0xffC1839F)
  
      ])    
    ),
    child: Center(
      child: Text(text,style: GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Color(0xffF5F5F5)
      
      ),),
    ),
  ),
)
;
  }
}