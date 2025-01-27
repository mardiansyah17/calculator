import 'package:calculator/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme(
          primary: Color(0xffED8114),
          secondary: Colors.white,
          surface: Color(0xff242424),
          error: Colors.red,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Color(0xffEAEAEA),
          onError: Colors.white,
          brightness: Brightness.dark,
          primaryContainer: Color(0xffED8114),
        ),
      ),
      home: MainScreen(),
    );
  }
}
