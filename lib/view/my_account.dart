import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/account_container.dart';
import 'package:lx/components/cutom_appbar.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: custom_appbar(title: "Alice Eve",
      subtitle: "alice.eve@gmail.com",
       leading: SizedBox(
      
        child: CircleAvatar(
          backgroundColor: Colors.black,radius: 100,
        ),
      ), actions: [
        Icon(Icons.close_outlined,
                    size: screenWidth * (33 / 360) , // Corrected icon size
      
      color: Color(0xff3C3C3C),)
      ]
      
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 53,),
              Text(
                "My account",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Name:",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(height: 8),
           AccountContainer(title: "Alice Eve"),
           SizedBox(height: 21,),
        
              Text(
                "Email:",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(height: 8),
           AccountContainer(title: "alice.eve@gmail.com"),

             SizedBox(height: 21,),
        
              Text(
                "Phone:",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(height: 8),
           AccountContainer(title: "+1 561-230-0033"),

             SizedBox(height: 21,),
        
              Text(
                "Address:",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(height: 8),
           AccountContainer(title: "2074, Half and Half Drive"),
           SizedBox(height: 32,),
        
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(width: 165,
                              height: 44,
                              
                              decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xff3C3C3C),
                                width: 2
                              ),
                              
                              ),
                              child: Row(
                                
                                children: [
                                  SizedBox(width: 25,),
                              Icon(Icons.settings,
                              color: Color(0xff3C3C3C),),
                              SizedBox(width: 5,),
                              
                                  Center(
                                    child: Text("Settings",style: GoogleFonts.firaSans(
                                    color: Color(0xff3C3C3C),fontSize: 18,fontWeight: FontWeight.w500
                                    
                                    ),),
                                  ),
                                ],
                              ),
                              
                              ),
                          ),


                   

            ],
          ),
        ),
      ),
    );
  }
}
