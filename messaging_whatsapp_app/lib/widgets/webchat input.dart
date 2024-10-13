import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';


class webchatinput extends StatelessWidget {
  const webchatinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          )
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: Colors.grey,),),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 15),
            child: TextField(decoration: InputDecoration(
              fillColor: searchBarColor,
              filled: true,
              hintText: 'Type a message',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
              ),
              contentPadding: EdgeInsets.only(left: 20)
            ),
            ),
          ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.mic_none_outlined,color: Colors.grey,),),
        ],

      ),
    );
  }
}
