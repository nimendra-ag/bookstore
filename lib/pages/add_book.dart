import 'package:flutter/material.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Add Book')),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Add Book Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}