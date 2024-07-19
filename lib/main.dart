import 'package:flutter/material.dart';
import 'package:learning_provider/pages/home_page.dart';
import 'package:learning_provider/pages/settings_page.dart';
import 'package:learning_provider/provider/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(create: (context) => UserProvider())
      ],

      child: MaterialApp(
        routes: {
          '/': (context) => const HomePage(),
          '/settings_page.dart': (context) => const SettingsPage()
        },
      ),
    );
  }
}
