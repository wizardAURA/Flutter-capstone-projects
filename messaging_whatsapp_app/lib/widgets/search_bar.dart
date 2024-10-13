import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.25,
     padding:  const EdgeInsets.all(10),
      decoration:  const BoxDecoration(
        border: Border(bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
      prefixIcon:
      const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.search,size: 20,color: Colors.grey,),
          ),
          hintText:'Search or Start new chat',
          hintStyle: const TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          ),
          contentPadding: const EdgeInsets.all(10)
        ),
      ),
    );
  }
}
