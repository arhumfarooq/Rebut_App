import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/utils/in_upButton.dart';
import 'package:lx/components/Logincontainer.dart';
import 'package:lx/components/small.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * (16 / 360)),
            child: Text(
              "ReBuy",
              style: GoogleFonts.dosis(
                fontWeight: FontWeight.w800,
                fontSize: screenWidth * 0.089, // ~32
                color: const Color(0xff3C3C3C),
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * (35 / 360),
          vertical: screenHeight * (57 / 800),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in',
              style: GoogleFonts.dosis(
                fontSize: screenWidth * 0.13, // ~48
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: screenHeight * 0.037),
            Text(
              'Login with one of the following options',
              style: GoogleFonts.roboto(
                color: const Color(0xff828282),
                fontWeight: FontWeight.w400,
                fontSize: screenWidth * 0.039, // ~14
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Small(images: 'assets//googlr.png'),
                Small(images: 'assets//Twitter.png'),
                Small(images: 'assets//Apple.png'),
              ],
            ),
            SizedBox(height: screenHeight * 0.025),
            Row(
              children: [
                Container(
                  height: 1,
                  width: screenWidth * 0.4,
                  color: const Color(0xff555555),
                ),
                Text(
                  " Or ",
                  style: GoogleFonts.roboto(
                    color: const Color(0xff828282),
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.035, // ~12
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xff555555),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.055),
            Logincontainer(text: "Email"),
            SizedBox(height: screenHeight * 0.023),
            Logincontainer(text: "Password"),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 245),
              child: Text(
                      "forget Password?",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 12, // ~18
                        color: const Color(0xffFF5A5F),
                      ),
                    ),
            ),
            SizedBox(height: screenHeight * 0.023),

            inButton(text: 'Log in'),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.roboto(
                    color: const Color(0xff828282),
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.039, // ~14
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigate to Signup
                  },
                  child: Text(
                    " Sign up",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.05, // ~18
                      color: const Color(0xffFF5A5F),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
