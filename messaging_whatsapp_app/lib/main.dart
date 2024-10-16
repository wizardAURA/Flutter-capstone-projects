import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/Auth/screens/login_Screen.dart';
import 'package:messaging_whatsapp_app/Features/landing/screens/screens.dart';
import 'package:messaging_whatsapp_app/firebase_options.dart';
import 'package:messaging_whatsapp_app/responsive/responsice_layour.dart';
import 'package:messaging_whatsapp_app/router.dart';
import 'package:messaging_whatsapp_app/screens/mobile_screen.dart';
import 'package:messaging_whatsapp_app/screens/mobilechatscree.dart';
import 'package:messaging_whatsapp_app/screens/web_Screen.dart';
import 'colors.dart';

void  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor
        )
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
      home: const landing()
    );
  }
}
