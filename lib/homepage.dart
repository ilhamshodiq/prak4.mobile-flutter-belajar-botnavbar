import 'package:flutter/material.dart';
import 'package:mobile_prak4/pages/home.dart';
import 'package:mobile_prak4/pages/profile.dart';
import 'package:mobile_prak4/pages/reels.dart';
import 'package:mobile_prak4/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List content = const [
    Home(),//column
    Search(),//LisrView
    Reels(),//container
    Profile(),//ListView
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nyobak Bottom Navbar'),
        centerTitle: true,
      ),
      body: Center(
        child: content[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_rounded), label: 'Reels'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/564x/9e/2f/82/9e2f822f844470d2da3c083788316b81.jpg"),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
