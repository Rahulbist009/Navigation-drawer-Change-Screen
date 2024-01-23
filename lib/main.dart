import 'package:flutter/material.dart';
import 'package:navigaction_drawer/home_screen.dart';
import 'package:navigaction_drawer/login_page.dart';
import 'package:navigaction_drawer/signup_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignuoPage.id:(context)=>SignuoPage(),
      },
      // home: HomePage(),
    );
  }
}
