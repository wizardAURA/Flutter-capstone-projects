import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';
import 'package:messaging_whatsapp_app/widgets/chatList.dart';
import 'package:messaging_whatsapp_app/widgets/webchat%20input.dart';

import '../info.dart';

class mobilechat extends StatelessWidget {
  static const String id = 'mobileScreen';
  const mobilechat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString(),
        style: const TextStyle(fontSize: 20),),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert)),
          
        ],

      ),
      body: Column(
        children: [
          const Expanded(child:
         chatList(),),

           Row(
             children: [
               Expanded(
                 child: TextField(
                  decoration: InputDecoration(
                    fillColor: mobileChatBoxColor,
                    filled: true,
                    prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
                    ),
                    suffixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Icon(Icons.attach_file,color: Colors.grey,),
                          SizedBox(width: 8,),
                          Icon(Icons.currency_rupee,color: Colors.grey,),
                          SizedBox(width: 8,),
                          Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                          SizedBox(width: 8,)

                        ],
                      ),
                    ),
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    )
                    ),
                    contentPadding: EdgeInsets.all(10)
                  ),
                 ),
               ),
               Icon(Icons.mic,color: Colors.green,)
             ],
           ),
        ],
      ),
    );
  }
}
