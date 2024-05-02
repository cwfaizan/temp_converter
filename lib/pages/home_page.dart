import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tempController = TextEditingController();
  double temperature = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tempController,
              decoration: const InputDecoration(
                hintText: 'Enter Temperature Here',
              ),
            ),
            const SizedBox(height: 20),
            Text('Temperature $temperature F'),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                String tempInString = tempController.text;
                double tc = double.parse(tempInString);
                double f = (tc * 9 / 5) + 32;
                setState(() {
                  temperature = f;
                });
              },
              child: const Text("Calculate"),
            )
          ],
        ),
      ),
    );
  }
}
