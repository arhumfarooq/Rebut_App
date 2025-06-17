import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeConatiner extends StatelessWidget {
  final String images;
  final String text3;
  final String text4;
  final String text5;
  const HomeConatiner({super.key, required this.images, required this.text3, required this.text4, required this.text5});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 246,
            width: 268,
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
borderRadius: BorderRadius.circular(12),
boxShadow: [
BoxShadow(
  color: Color(0xff00000040).withOpacity(0.25),
  blurRadius: 12,
  spreadRadius: 2,
  offset: Offset(2, 4)
)
]

            ),
            child: Column(
              children: [
                Container(
         height: 174,
            width: 268,
        child: Stack(
          children:[ Container(
            height: 174,
            width: 268,
            
            decoration: BoxDecoration(
              
                borderRadius: BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22)),
                
            ),
            child: Image.asset(images,
            fit: BoxFit.cover,
            ),
          ),
            Positioned(
            top: 134,
            left: 228,
            
            
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF).withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
        Icons.favorite_outline_sharp,
        size: 20, // Size chhota takay container me fit aaye
        color: Color(0xffFF5858),
            ),
          ),
        )
            
            )
            
          ]
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
              children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(text3,style: GoogleFonts.firaSans(
              
              color: Color(0xff3C3C3C),
              fontWeight: FontWeight.w500,
              fontSize: 20,
              shadows: [
        BoxShadow(
          color: Color(0xff3C3C3C)
        )
              ]
              
              ),),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text4,style: GoogleFonts.firaSans(fontWeight: FontWeight.w400,fontSize: 14,
                color: Color(0xffC1839F)
                ),),
        
                Text(text5,
                style: GoogleFonts.firaSans(fontWeight: FontWeight.w700,fontSize: 24,
                color: Color(0xff3C3C3C)
                ),
                )
              ],
            )
          ],
        ),
      ),

              ],
            ),
          )
 ;
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeContainer extends StatelessWidget {
//   final String images;
//   final String text3;
//   final String text4;
//   final String text5;

//   const HomeContainer({
//     super.key,
//     required this.images,
//     required this.text3,
//     required this.text4,
//     required this.text5,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 246,
//       width: 174,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.08),
//             blurRadius: 12,
//             spreadRadius: 2,
//             offset: Offset(2, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // IMAGE
//           Container(
//             height: 140,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(images),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(text3,
//                     style: GoogleFonts.firaSans(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     )),
//                 SizedBox(height: 4),
//                 Text(text4,
//                     style: GoogleFonts.firaSans(
//                       fontSize: 12,
//                       color: Colors.grey,
//                     )),
//                 SizedBox(height: 4),
//                 Text(text5,
//                     style: GoogleFonts.firaSans(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xffFF5858),
//                     )),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
