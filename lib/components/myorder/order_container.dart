import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/explore_conatiner/conatiner2.dart';

class OrderContainer extends StatelessWidget {
final String productImage;
final String productName;
final String productPrice;
final String postedDate;

  const OrderContainer({super.key, required this.productImage, required this.productName, required this.productPrice, required this.postedDate});

  @override
  Widget build(BuildContext context) {


    return  Container(
    width: 349,
    height: 114,
    decoration: BoxDecoration(
      color: Color(0xff087E8B).withOpacity(0.14),
      borderRadius: BorderRadius.circular(12)
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            child: Image.asset(productImage,
            fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
            ),
          ),
          SizedBox(width: 22,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,style: GoogleFonts.firaSans(
                    fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff616161)
              
                  ),),
                  SizedBox(height: 4,),
              Text(postedDate,style: GoogleFonts.firaSans(
                    fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xff616161)
              
                  ),),
              SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productPrice,style: GoogleFonts.firaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff616161)
                      
                      ),),
                  
              
                         
                        MyContainerWidget2(title: "Rate now")
                    ],
                  )
              
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
  }
}