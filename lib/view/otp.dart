import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/buttons/in_upButton.dart';
import 'package:lx/components/pincodefield.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
  padding: const EdgeInsets.symmetric(horizontal: 35),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30,),
  Text("OTP Verification",style: GoogleFonts.roboto(
color: Color(0xff3C3C3C),
fontSize: 26,
fontWeight: FontWeight.w600,

  ),),

  Text(
                'Please enter 6-digit code we have sent you on your phone 0321-1234567',
                style: GoogleFonts.roboto(
                  color: const Color(0xff828282),
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.039, // ~14
                ),
              ),
SizedBox(height: 80,),
Pincodefield(),
SizedBox(height: 148,),
inButton(text: 'Continue')

    ],
  ),
),




    );
  }
}