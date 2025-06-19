import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';
import 'package:lx/components/meesage_container/mess_conatiner.dart';
import 'package:lx/components/search_container.dart';
import 'package:lx/models/messages/message_list.dart';

class Messages extends StatelessWidget {

  
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: CustomAppbar2(page: "Messages")),
body: Column(
  children: [
SearchContainer(width1: 359),

Expanded(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ListView.builder(
      itemCount: chatlist.length,
      itemBuilder: (context,index){
    
    final item=chatlist[index];
    return MessConatiner(imagesurl: item.profileimage, personName: item.name, personLastmessage: item.lastMessage);
    
    }),
  ),
)
  ],
),


    );
  }
}