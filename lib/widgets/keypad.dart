import 'package:calculator/keys_button.dart';
import 'package:calculator/widgets/keypad_button.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  const KeyPad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: keysButton.length,
          itemBuilder: (context, index) {
            final keyButton = keysButton[index];
            return KeyPadButton(
              keyButton: keyButton,
            );
          },
        ),
      ),
    );
  }
}
