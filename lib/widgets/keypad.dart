import 'package:calculator/cubit/cubit/calculator_cubit.dart';
import 'package:calculator/keys_button.dart';
import 'package:calculator/model/key_model.dart';
import 'package:calculator/widgets/keypad_button.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final CalculatorCubit cubit;
  const KeyPad({
    super.key,
    required this.cubit,
  });

  void onPressed(KeyModel keyButton) {
    switch (keyButton.value) {
      case "del":
        cubit.delete();
        break;
      case "c":
        cubit.clear();
        break;
      default:
        cubit.numberPressed(keyButton.value);
        break;
    }
    cubit.calculate();
  }

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
                onPressed: () {
                  onPressed(keyButton);
                });
          },
        ),
      ),
    );
  }
}
