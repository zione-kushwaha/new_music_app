import 'package:flutter/material.dart';
import 'package:h1/entry_point.dart';
import 'package:h1/utils/theme/theme.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: Music.lightTheme,
      darkTheme: Music.darkTheme,
      home: Home(),
    );
  }
}
