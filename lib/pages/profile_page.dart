import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Profile Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}