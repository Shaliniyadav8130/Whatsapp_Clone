import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home_page.dart';
import 'package:whatsapp_clone/screens/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        secondaryHeaderColor:Color(0xff25d366),
      ),
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}


