import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/widgets/chatList.dart';
import 'package:messaging_whatsapp_app/widgets/contacts.dart';
import 'package:messaging_whatsapp_app/widgets/search_bar.dart';
import 'package:messaging_whatsapp_app/widgets/web_ProfileBar.dart';
import 'package:messaging_whatsapp_app/widgets/web_chat_appbar.dart';
import 'package:messaging_whatsapp_app/widgets/webchat%20input.dart';

class WebScreen extends StatelessWidget {
  static const String id ='WebScreen';
   WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  webProfileBar(),
                  Search_Bar(),
                  Contacts_list(),
                ],
              ),
            ),
          ),
          Container(
                width: MediaQuery.of(context).size.width*0.75,
            decoration:const BoxDecoration(
              image:DecorationImage(image:
              AssetImage('images/bgimage.png'),
              fit: BoxFit.cover)
            ) ,
            child: Column(
              children: [
                    webChat(),
                Expanded(child: chatList(),
                ),
                webchatinput(),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
