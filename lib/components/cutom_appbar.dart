import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_appbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final List<Widget> actions;

  const custom_appbar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea( // important to avoid notch overlap
      child: Container(
        height: preferredSize.height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color(0xffF5F5F5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Leading
            SizedBox(
              height: 96,
              width: 96,
              child: leading,
            ),
            
         
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                    title,
                    style: GoogleFonts.firaSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFF5A5F),
                    ),
                  ),
                  Text(subtitle,style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: Color(0xff979797)
                  
                  ),)
                  
                  
                  
                    ],
                  ),
                ),
              ),
            ),

            // Actions
            Row(
              mainAxisSize: MainAxisSize.min,
              children: actions,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
