import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pincodefield extends StatelessWidget {
  
  const Pincodefield({super.key});

  @override
  Widget build(BuildContext context) {
     final screensize = MediaQuery.of(context).size;   

    return PinCodeTextField(pinTheme: PinTheme(

shape: PinCodeFieldShape.box,
borderRadius: BorderRadius.circular(8),
fieldHeight: screensize.height * 0.06,
        fieldWidth: screensize.width * 0.12,
       selectedColor: Color(0xff3C3C3C),
        activeColor: Color(0xff3C3C3C),
        inactiveColor:Colors.black ,
        inactiveFillColor: Colors.black,
        activeFillColor: Color(0xffFF5A5F),
        selectedFillColor: Color(0xffFF5A5F),
        

), 

textStyle: TextStyle(
  color: Color(0xffFF5A5F),
fontSize: screensize.width * 0.06,
        fontWeight: FontWeight.bold,


),
cursorColor: Color(0xff3C3C3C),
obscureText: false,
length: 6,
keyboardType: TextInputType.number,
appContext: context,

);
  }
}