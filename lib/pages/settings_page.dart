import 'package:flutter/material.dart';
import 'package:learning_provider/provider/user_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  late String newText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Settings')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Change the Text: ${context.watch<UserProvider>().centeredText}')),
            Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    newText = value;
                  },
                  validator: (value) => value == "" ? "Enter a new Text" : null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      context
                          .read<UserProvider>()
                          .changeCenteredText(newCenteredText: newText);
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.greenAccent)),
                  child: const Text('Confirm')),
            ),
          ],
        ),
      ),
    );
  }
}
