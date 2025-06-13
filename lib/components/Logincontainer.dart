import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logincontainer extends StatelessWidget {
  final String text;
  const Logincontainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    final screenheight = MediaQuery.of(context).size.height;
final screenwidth = MediaQuery.of(context).size.width;
    return Container(
  width: screenwidth*0.917,
  height: screenheight*0.07,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    color: Color(0xffDEDEDE)
  ),
child: TextFormField(
  cursorColor: Colors.black,
  cursorWidth: screenwidth*0.001,

decoration: InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
hintText: text,
hintStyle: GoogleFonts.roboto(
color: Color(0xff6F6F6F),
fontSize: 18,
fontWeight: FontWeight.w400

),
focusedBorder: InputBorder.none,
enabledBorder: InputBorder.none

),

),

);
  }
}