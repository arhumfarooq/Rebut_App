import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/check_container/checkout_container.dart';
import 'package:lx/components/explore_conatiner/conatiner2.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(child: CustomAppbar2(page: "Checkout")),
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: 
    
          /// 🧾 Scrollable content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CheckoutContainer(
                  productImage: "assets/airpods.png",
                  productName: "Airpods",
                  productPrice: "₹ 8,999",
                  Date: "1/2/2025",
                ),
                // Add more items if needed
          //Spacer//(),
          Expanded(child: SizedBox(
          
          )),
                          InkWell(
                                      onTap: () {
                                        // Handle confirm
                                      },
                                      child: Container(
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff3C3C3C),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Confirm Order",
                                            style: GoogleFonts.firaSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xffF5F5F5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,)

                  
              ],
            ),
          ),

          /// ✅ Fixed Confirm Order button at bottom

      
    );
  }
}
