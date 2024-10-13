import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';

class senderCard extends StatelessWidget {
  const senderCard({required this.message, required this.date});

  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width-45,
      ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20),
                child: Text(message,style: TextStyle(
                    fontSize: 16
                ),),
              ),
              Positioned(bottom: 2,right: 10,
                child: Row(
                  children: [
                    Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),
                    ),
                    const SizedBox(width: 5,),

                    Icon(Icons.done_all,
                      size: 20,
                      color: Colors.white60,),
                  ],
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
