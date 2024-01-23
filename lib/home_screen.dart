import 'package:flutter/material.dart';
import 'package:navigaction_drawer/login_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'Homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NavigationDrawer',
          style: TextStyle(color: Color(0XFF7E57C2)),
        ),
        backgroundColor: const Color(0xffa18ffeb),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xffa18ffeb),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                ),
                accountName: Text(
                  'Rahul',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text('rahul@gmail.com',
                    style: TextStyle(color: Colors.black))),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, HomePage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('Homepage'),
            ),
          ),
        ],
      ),
    );
  }
}
