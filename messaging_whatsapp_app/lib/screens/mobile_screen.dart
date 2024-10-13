import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';
import 'package:messaging_whatsapp_app/widgets/contacts.dart';

class mobileScreen extends StatelessWidget {
  static const String id = 'mobile_screen';
  const mobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            surfaceTintColor: Colors.transparent,
            shadowColor: const Color.fromRGBO(31,44,52,50),
            title: const Text('Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            elevation: 0,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,),)
            ],
            bottom: const TabBar(
              indicatorColor:tabColor,
                indicatorWeight: 3,
                labelColor: tabColor,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                tabs: [
              Tab(text:'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS',)
            ]),
          ),
          body:const  Contacts_list(),
          floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: tabColor,
          child: Icon(Icons.add_comment_rounded),),
        ));
  }
}
