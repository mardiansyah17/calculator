import 'package:calculator/widgets/keypad.dart';
import 'package:calculator/widgets/screen_calculator.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Kalkulator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ScreenCalculator(),
            KeyPad(),
          ],
        ),
      ),
    );
  }
}
