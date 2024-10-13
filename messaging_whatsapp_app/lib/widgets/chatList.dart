import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/info.dart';
import 'package:messaging_whatsapp_app/widgets/msgcar.dart';
import 'package:messaging_whatsapp_app/widgets/sendermsg.dart';

class chatList extends StatelessWidget {
  const chatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: messages.length,
   itemBuilder: (context, index){
     if(messages[index]['isMe']== true){
       return msCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());

     }else{return senderCard(message: messages[index]['text'].toString() , date: messages[index]['time'].toString());
     }
   },

    );
  }
}
