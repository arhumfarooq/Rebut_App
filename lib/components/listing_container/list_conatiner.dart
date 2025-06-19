import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListConatiner extends StatelessWidget {
final String productImage;
final String productName;
final String productPrice;
final String postedDate;
final String views;


  const ListConatiner({super.key, required this.productImage, required this.productName, required this.productPrice, required this.postedDate, required this.views});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,style: GoogleFonts.firaSans(
                  fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff616161)
            
                ),),
                SizedBox(height: 8,),
            Text(views,style: GoogleFonts.firaSans(
                  fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff616161)
            
                ),),
            SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productPrice,style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff087E8B)
                    
                    ),),
                    SizedBox(width: 19,),
            
              Text(postedDate,style: GoogleFonts.firaSans(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xffC1839F)
            
                ),),
               SizedBox(width: 11,),
                Container(
                  width: 30,
                  height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFFFFF).withOpacity(0.7)
            
            ),
            child: Expanded(
              child: IconButton(
                      padding: EdgeInsets.zero, // remove default padding
              
                onPressed: (){}, icon: Icon(Icons.visibility_off_outlined,color: Color(0xff3C3C3C),)),
            ),
                )
            
                  ],
                )
            
              ],
            ),
          )
        ],
      ),
    ),
  )
  ;
  }
}