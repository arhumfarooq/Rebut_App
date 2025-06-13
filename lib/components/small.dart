import 'package:flutter/material.dart';

class Small extends StatelessWidget {

  final String images; 

  const Small({
    
    required this.images,
    super.key});

  @override
  Widget build(BuildContext context) {


final screenheight = MediaQuery.of(context).size.height;
final screenwidth = MediaQuery.of(context).size.width;

    return Container(
height: screenheight*0.07,
width: screenwidth*0.22,
decoration: BoxDecoration(
  color: Color(0xffDEDEDE),
  borderRadius: BorderRadius.circular(22)
),
child: Image.asset(images),

    );
  }
}