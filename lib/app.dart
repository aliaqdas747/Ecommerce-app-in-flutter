import 'package:flutter/material.dart';
import 'package:r_store/utils/theme/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: RAppTheme.lightTheme,
        darkTheme: RAppTheme.darkTheme);
  }
}
