import 'package:flutter/material.dart';

enum RadioValue { first, second, third }

class RadioSelection extends StatefulWidget {
  const RadioSelection({super.key});

  @override
  State<RadioSelection> createState() => _RadioSelectionState();
}

class _RadioSelectionState extends State<RadioSelection> {
  RadioValue? selectedValue = RadioValue.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('First'),
          leading: Radio<RadioValue>(
            value: RadioValue.first,
            groupValue: selectedValue,
            onChanged: updateValue,
          ),
        ),
        ListTile(
          title: const Text('Second'),
          leading: Radio<RadioValue>(
            value: RadioValue.second,
            groupValue: selectedValue,
            onChanged: updateValue,
          ),
        ),
        ListTile(
          title: const Text('Third'),
          leading: Radio<RadioValue>(
            value: RadioValue.third,
            groupValue: selectedValue,
            onChanged: updateValue,
          ),
        ),
      ],
    );
  }

  void updateValue(RadioValue? value) {
    value = value ?? RadioValue.first;
    selectedValue = value;
    setState(() {});
  }
}
