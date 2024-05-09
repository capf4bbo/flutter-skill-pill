import 'package:flutter/material.dart';

const keyField = "BoolValue";

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool value = true;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    //TODO load init data in widget
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();
            case ConnectionState.active:
            case ConnectionState.done:
              return Switch(
                value: value,
                // TODO update data using shared preferences
                onChanged: (bool newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
              );
          }
        });
  }
}
