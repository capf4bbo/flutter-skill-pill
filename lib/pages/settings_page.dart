import 'package:flutter/material.dart';
import 'package:flutterpill01/widgets/radio_selection.dart';
import 'package:flutterpill01/widgets/switch_button.dart';
import 'package:flutterpill01/widgets/text_input.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Settings"),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("A bool value"),
              SwitchButton(),
              Text("One selection value"),
              RadioSelection(),
              Text("A text value"),
              TextInput()
            ],
          ),
        ),
      ),
    );
  }
}
