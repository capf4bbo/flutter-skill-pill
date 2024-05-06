import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const keyField = "BoolValue";

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool value = true;
  Future<SharedPreferences> futurePrefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    prefs = await futurePrefs;
    value = prefs.getBool(keyField) ?? false;
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
              return Switch(
                value: value,
                onChanged: (bool newValue) {
                  prefs.setBool(keyField, newValue);
                  setState(() {
                    value = newValue;
                  });
                },
              );
          }
        });
  }
}
