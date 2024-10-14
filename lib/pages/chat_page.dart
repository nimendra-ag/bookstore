import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Chats')),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Chat Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}