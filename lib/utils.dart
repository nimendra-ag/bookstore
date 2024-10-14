// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'package:bookstore/services/auth_service.dart';
import 'package:bookstore/services/navigation_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:bookstore/firebase_options.dart';

Future<void> setUpFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;

  if (!getIt.isRegistered<AuthService>()) {
    getIt.registerSingleton<AuthService>(AuthService());
  }

  getIt.registerSingleton<NavigationService>(NavigationService());
//   getIt.registerSingleton<AlertService>(AlertService());
//   getIt.registerSingleton<MediaService>(MediaService());
//   getIt.registerSingleton<StorageService>(StorageService());
//   getIt.registerSingleton<DatabaseService>(DatabaseService());
}


