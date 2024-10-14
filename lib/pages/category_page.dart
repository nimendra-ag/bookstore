import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Categories')),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Categories Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}