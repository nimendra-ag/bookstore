import 'package:bookstore/services/auth_service.dart';
import 'package:bookstore/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GetIt _getIt = GetIt.instance;
  late AuthService _authService;
  late NavigationService _navigationService;

  @override
  void initState() {
    super.initState();
    _authService = _getIt.get<AuthService>();
    _navigationService = _getIt.get<NavigationService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () async {
                bool result = await _authService.logout();
                if (result) {
                  _navigationService.pushReplacementNamed("/login"); //user can't go back
                }
              },
              color: Colors.red,
              icon: const Icon(
                Icons.logout,
              ))
        ],
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
