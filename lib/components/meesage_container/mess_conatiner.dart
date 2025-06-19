import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessConatiner extends StatelessWidget {
final String imagesurl;
final String personName;
final String personLastmessage;

  const MessConatiner({super.key, required this.imagesurl, required this.personName,  required this.personLastmessage});

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 359,
  height: 90,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Color(0xffFFFFFF)
  ),
  child: Row(
    children: [
      Container(
        height: 60 ,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle

        ),
      child: CircleAvatar(
      backgroundImage: AssetImage(imagesurl
      ),


      ),
      ),
SizedBox(width: 10,),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(personName,style: GoogleFonts.firaSans(
fontSize: 16,
fontWeight: FontWeight.w500,
color: Color(0xff3C3C3C) ,

              ),),

              Text("| Paul Molive",style: GoogleFonts.firaSans(
fontSize: 16,
fontWeight: FontWeight.w500,
color: Color(0xff828282)

              ),)
            ],
          ),
          Expanded(
            child: Expanded(
              child: Text(personLastmessage,style: GoogleFonts.firaSans(
                fontSize: 14,
              fontWeight: FontWeight.w400    ,
              color: Color(0xff8A8A8A)      ),),
            ),
          )
        ],
      )
    ],
  ),
);
  }
}