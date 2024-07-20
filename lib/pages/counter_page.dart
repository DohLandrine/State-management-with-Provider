import 'package:flutter/material.dart';
import 'package:learning_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Text(
          '${context.watch<CounterProvider>().count}',
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RawMaterialButton(
              padding: const EdgeInsets.all(20),
              fillColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () {
                context.read<CounterProvider>().increment();
              },
              child: const Icon(Icons.exposure_plus_1),
            ),
            const SizedBox(
              height: 5,
            ),
            RawMaterialButton(
              padding: const EdgeInsets.all(20),
              fillColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () {
                context.read<CounterProvider>().decrement();
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
      ),
    );
  }
}
