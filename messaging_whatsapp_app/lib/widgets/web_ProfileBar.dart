import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';

class webProfileBar extends StatelessWidget {
  const webProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/joel.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon:const  Icon(Icons.message,color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,),),
            ],
          ),
        ],
      ) ,
    );
  }
}
