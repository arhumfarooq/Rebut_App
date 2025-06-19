import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasedForm extends StatelessWidget {
  const PurchasedForm({super.key});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
 appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0,
        scrolledUnderElevation: 0,
        leadingWidth: screenWidth * (86 / 360),
        leading: Padding(
          padding: EdgeInsets.only(left: screenWidth * (35 / 360)),
          child: Container(
            width: screenWidth * (46 / 360),
            height: screenWidth * (46 / 360),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff555555)),
              borderRadius: BorderRadius.circular(screenWidth * 0.033),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                size: screenWidth * 0.045,
              ),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * (35 / 360)),
            child: Text(
              "ReBuy",
              style: GoogleFonts.dosis(
                fontWeight: FontWeight.w800,
                fontSize: screenWidth * 0.09, // ~32
                color: const Color(0xff3C3C3C),
              ),
            ),
          )
        ],
      ),
backgroundColor: Color(0xffF5F5F5),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      
  Text(
                "Enter Card Details",
                style: GoogleFonts.dosis(
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.09, // ~32
                  color: Colors.black,
                ),
              ),
Text("Card Number:",style: GoogleFonts.firaSans(
fontSize: 18,
color: Color(0xff3c3c3c)
),),

Container(
  width: 349,
  height: 43,
  decoration: BoxDecoration(
   // color: Colors.black,
border: Border.all(
color: Color(0xff3C3C3C),
width: 2.2

),
borderRadius: BorderRadius.circular(12)  ),
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: TextFormField(
  decoration: InputDecoration(
    hintText: "XXXX-XXXX-XXXX-XXXX",
    hintStyle: GoogleFonts.firaSans(
  color: Color(0xff656565),
  fontWeight: FontWeight.w300,
  fontSize: 18
    ),
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none
  ),
  
  ),
),
),
SizedBox(height: 20,),
Text("Expiry Date:",style: GoogleFonts.firaSans(
fontSize: 18,
color: Color(0xff3c3c3c)
),),

Container(
height: 44,
width: 120,
decoration: BoxDecoration(
border: Border.all(
color: Color(0xff3C3C3C),
width: 2.2

),
borderRadius: BorderRadius.circular(12) 

),
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "MM/YY",
      hintStyle: GoogleFonts.firaSans(
    color: Color(0xff656565),
    fontWeight: FontWeight.w300,
    fontSize: 18
      ),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none
    ),
    
    ),
),
)
  
    ],
  ),
),

    );
  }
}