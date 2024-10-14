import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/pages/add_book.dart';
import 'package:bookstore/pages/category_page.dart';
import 'package:bookstore/pages/chat_page.dart';
import 'package:bookstore/pages/home_page.dart';
import 'package:bookstore/pages/profile_page.dart';

class MainAppPage extends StatefulWidget {
  const MainAppPage({super.key});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  final List<Widget> _navigationItems = [
    const Icon(Icons.home),
    const Icon(Icons.category),
    const Icon(Icons.add),
    const Icon(Icons.person),
    const Icon(Icons.chat)
  ];

  final screens = const [
    HomeScreen(),
    CategoryScreen(),
    AddBookScreen(),
    ProfileScreen(),
    ChatScreen()
  ];

  int currentIndex = 0;

  Color bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: screens[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: bgColor,
          items: _navigationItems,
          height: 75,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
        ));
  }
}