import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = '';

  void greetUser() {
    setState(() {
      greetingMessage = "Hello, ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage, style: const TextStyle(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    hintText: 'Type something here boi',
                    border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: greetUser, child: const Text('Greet user'))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Settings page'),
      ),
    );
  }
}
