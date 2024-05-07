import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const keyField = "TextValue";

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  Future<SharedPreferences> futurePrefs = SharedPreferences.getInstance();
  late SharedPreferences prefs;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    prefs = await futurePrefs;
    controller.text = prefs.getString(keyField) ?? "";
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
              return SizedBox(
                width: 250,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Some text value',
                  ),
                  onChanged: (newValue) => prefs.setString(keyField, newValue),
                ),
              );
          }
        });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
