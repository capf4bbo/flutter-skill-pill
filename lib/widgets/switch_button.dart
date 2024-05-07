import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (bool newValue) {
        setState(() {
          value = newValue;
        });
      },
    );
  }
}
