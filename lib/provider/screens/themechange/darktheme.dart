import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider_con/theme_provider.dart';
class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger =Provider.of<ThemeChangeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("subscribe to my channel"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
            value: ThemeMode.light, 
            groupValue: themeChanger.themeMode, 
            onChanged: themeChanger.setTheme,
            ),
            RadioListTile(
              title:const Text("Dark Mode"),
              value: ThemeMode.dark,
               groupValue: themeChanger.themeMode, 
              onChanged: themeChanger.setTheme,
              ),
               RadioListTile(
              title:const Text("System Mode"),
              value: ThemeMode.system,
               groupValue: themeChanger.themeMode, 
              onChanged: themeChanger.setTheme,
              ),
              const Icon(Icons.favorite),
      ]),
    );
  }
}