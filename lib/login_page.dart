import 'package:flutter/material.dart';
import 'package:navigaction_drawer/signup_Page.dart';
class LoginPage extends StatelessWidget {

  static const String id='Loginpage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignuoPage()));
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
