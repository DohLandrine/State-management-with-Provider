import 'package:flutter/material.dart';
import 'package:learning_provider/provider/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FilledButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/settings_page.dart');
                });
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 96, 187, 143))),
              child: const Text('Setting')),
        ],
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().centeredText,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
