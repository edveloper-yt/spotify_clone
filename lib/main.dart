import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(background: Color(0xFF121212)),
      ),
      themeMode: ThemeMode.dark,
      home: const WelcomeScreen(),
    );
  }
}
