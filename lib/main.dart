import 'package:flutter/material.dart';
import 'package:ludo_app/pages/account_page.dart';
import 'package:ludo_app/pages/search_page.dart';

import 'pages/favorite_page.dart';
import 'pages/ludo_home_page.dart';
import 'pages/upload_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> pages = const [
    LudoHomePage(),
    SearchPage(),
    UploadPage(),
    Favoritepage(),
    AccountPage()
  ];

  void changeTheIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        //unselectedItemColor: Colors.white,
        //fixedColor: Colors.amber,
        backgroundColor: Colors.green,
        //selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
        onTap: changeTheIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.upload_rounded),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.favorite),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.person),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
