import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {

      final screenheight = MediaQuery.of(context).size.height;
final screenwidth = MediaQuery.of(context).size.width;
    return

         
 Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
    
    color: Color(0xffDEDEDE),
    borderRadius: BorderRadius.circular(22),
    
      ),
      child:TextFormField(
        cursorColor: Color(0xff828282),
    decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),

    focusedBorder: InputBorder.none,
enabledBorder: InputBorder.none,

    hintText: "Search for books, guitar and more...",
    hintStyle: GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Color(0xff828282)
      
    ),
    suffixIcon: Icon(Icons.search,color: Color(0xff828282),)
    ),
    
      ) ,),
  );
  }
}