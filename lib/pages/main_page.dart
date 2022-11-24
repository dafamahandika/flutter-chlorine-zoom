import 'package:flutter/material.dart';
import 'package:flutter_1_dafamahandika/pages/history_page.dart';
import 'package:flutter_1_dafamahandika/pages/home_page.dart';
import 'package:flutter_1_dafamahandika/pages/login_page.dart';
import 'package:flutter_1_dafamahandika/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedMenu = 0;
  List<Widget> listPages = const [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My App'),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.pushReplacement(context,
      //               MaterialPageRoute(builder: (context) => LoginPage()));
      //         },
      //         icon: const Icon(Icons.exit_to_app))
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedMenu,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "HIstory"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _selectedMenu = value;
          });
        },
      ),
      body: listPages[_selectedMenu],
    );
  }
}
