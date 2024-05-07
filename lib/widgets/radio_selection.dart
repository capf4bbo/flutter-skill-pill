import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RadioValue { first, second, third }

const String keyField = "RadioField";

class RadioSelection extends StatefulWidget {
  const RadioSelection({super.key});

  @override
  State<RadioSelection> createState() => _RadioSelectionState();
}

class _RadioSelectionState extends State<RadioSelection> {
  RadioValue? selectedValue = RadioValue.first;
  Future<SharedPreferences> futurePrefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    prefs = await futurePrefs;
    int index = prefs.getInt(keyField) ?? 0;
    selectedValue =
        RadioValue.values.firstWhere((element) => element.index == index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futurePrefs,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            case ConnectionState.active:
            case ConnectionState.done:
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
        });
  }

  void updateValue(RadioValue? value) {
    value = value ?? RadioValue.first;
    prefs.setInt(keyField, value.index);
    selectedValue = value;
    setState(() {});
  }
}
