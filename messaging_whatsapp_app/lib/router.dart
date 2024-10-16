import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/Auth/screens/login_Screen.dart';
import 'package:messaging_whatsapp_app/common/widgets/error.dart';

Route<dynamic>generateRoute(RouteSettings settings ){
  switch(settings.name){
    case loginScreen.id:
      return MaterialPageRoute(builder: (context)=> const loginScreen(),
      );
    default:
      return MaterialPageRoute(builder: (context)=> const Scaffold(
        body: Errorscreen(error: 'This page does\'t exist '),
      ));
  }
}