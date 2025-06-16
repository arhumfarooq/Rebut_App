import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountContainer extends StatelessWidget {
  final String title;
  const AccountContainer({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return     Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffEAEAEA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: title,
                          hintStyle: GoogleFonts.firaSans(
                            color: const Color(0xff656565),
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: const Color(0xff656565),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Your edit action
                      },
                      icon: const Icon(
                        Icons.edit_square,
                        color: Color(0xff898989),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              );
  }
}