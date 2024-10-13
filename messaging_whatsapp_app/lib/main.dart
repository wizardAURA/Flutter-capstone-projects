import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/responsive/responsice_layour.dart';
import 'package:messaging_whatsapp_app/screens/mobile_screen.dart';
import 'package:messaging_whatsapp_app/screens/mobilechatscree.dart';
import 'package:messaging_whatsapp_app/screens/web_Screen.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        mobileScreen.id: (context) => mobileScreen(),
        mobilechat.id:(context) => mobilechat(),
        WebScreen.id :(context) => WebScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: Responsive_layout (mobileScreen_layout: const mobileScreen(), webScreen_layout: WebScreen()),
    );
  }
}
