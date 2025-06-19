import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/Logincontainer.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';

class Shipping extends StatelessWidget {
  const Shipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: SafeArea(child: 
      CustomAppbar2(page: "Shipping Address",)
      )),
      backgroundColor: Color(0xffF5F5F5),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("Kindly write the address of the delivery and more details.",style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                    color: Color(0xff898989),
                    
                    
            ),),
            SizedBox(height: 10,),

            Logincontainer(text: "First Name"),
            SizedBox(height: 10,),
            Logincontainer(text: "Last Name"),
            SizedBox(height: 10,),
             Logincontainer(text: "Contact Number"),
            SizedBox(height: 10,),
             Logincontainer(text: "Your Address"),
            SizedBox(height: 40,),
            InkWell(
              onTap: () {
                
              },
              child: Container(height: 56,
              width: 344,
              decoration: BoxDecoration(
                color: Color(0xff3C3C3C),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(child: Text("Continue",style: GoogleFonts.firaSans(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xffF5F5F5)
              )))
              
              ),
            )
         
          ],
        ),
      ),
    );
  }
}