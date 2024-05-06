import 'package:flutter/material.dart';

enum RadioValues { ValueA, ValueB, ValueC }

class RadioSelection extends StatefulWidget {
  const RadioSelection({super.key});

  @override
  State<RadioSelection> createState() => _RadioSelectionState();
}

class _RadioSelectionState extends State<RadioSelection> {
  RadioValues? _character = RadioValues.ValueA;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('A'),
          leading: Radio<RadioValues>(
            value: RadioValues.ValueA,
            groupValue: _character,
            onChanged: (RadioValues? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('B'),
          leading: Radio<RadioValues>(
            value: RadioValues.ValueB,
            groupValue: _character,
            onChanged: (RadioValues? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('C'),
          leading: Radio<RadioValues>(
            value: RadioValues.ValueC,
            groupValue: _character,
            onChanged: (RadioValues? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
