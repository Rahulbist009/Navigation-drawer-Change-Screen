import 'package:flutter/material.dart';

class SignuoPage extends StatefulWidget {

  static const String id='SignuoPage';
  const SignuoPage({super.key});

  @override
  State<SignuoPage> createState() => _SignuoPageState();
}

class _SignuoPageState extends State<SignuoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'NavigationDrawer',
          style: TextStyle(color: Color(0XFF7E57C2)),
        ),
        backgroundColor: Color(0xffA18FFEB),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);

              },
              child: Text('SignupPage'),
            ),
          ),
        ],
      ),
    );
  }
}
