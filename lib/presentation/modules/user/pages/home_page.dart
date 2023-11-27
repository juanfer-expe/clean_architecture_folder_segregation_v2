import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean Architecture with segregated folders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(child: ElevatedButton(
          child: const Text('Ir a...'),
          onPressed: () {},
        )),
      ),
    );
  }
}