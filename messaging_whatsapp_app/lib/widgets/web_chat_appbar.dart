import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';
import 'package:messaging_whatsapp_app/info.dart';

class webChat extends StatelessWidget {
  const webChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
    padding: EdgeInsets.all(10),
    color: webAppBarColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/564x/ca/b1/ed/cab1ed975dabbc793865fced8fd41426.jpg'),
              radius: 30,
            ),SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            Text(info[0]['name'].toString(), style: TextStyle(fontSize: 18),)
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,),),
          ],
        )
      ],
    ),);
  }
}
