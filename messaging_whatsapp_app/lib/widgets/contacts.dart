import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/info.dart';
import 'package:messaging_whatsapp_app/screens/mobilechatscree.dart';

class Contacts_list extends StatelessWidget {
  const Contacts_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child:
          ListView.builder(
            shrinkWrap: true,
            itemBuilder:(context,index){
            return Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, mobilechat.id);
                  },
                  child: Padding(
                    padding:  const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18)),
                      subtitle: Padding(padding:  const EdgeInsets.only(top: 6),
                      child: Text(info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 14),),),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString(),
                        ),
                        radius: 30,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(
                          color: Colors.grey,

                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
            itemCount: info.length,
          ),



    );
  }
}
