import 'package:flutter/material.dart';
import 'package:n_bbang/screens/home/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "N.BBANG",
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          secondary: Colors.white,
          primary: Colors.black,
            onSurface: Colors.white
        ),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF0C1122),
          colorScheme: const ColorScheme.dark(
              secondary: Colors.black,
              primary: Colors.white,
              onSurface: Color(0xFF0C1122)
          )
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}