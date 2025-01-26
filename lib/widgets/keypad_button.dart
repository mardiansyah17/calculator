import 'package:calculator/theme/app_pallete.dart';
import 'package:calculator/model/key_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeyPadButton extends StatelessWidget {
  final KeyModel keyButton;
  const KeyPadButton({
    super.key,
    required this.keyButton,
  });

  @override
  Widget build(BuildContext context) {
    late Color labelColor;
    late Color backgroundColor;
    switch (keyButton.key) {
      case KeyType.ac:
        labelColor = AppPallete.primary;
        backgroundColor = Colors.white;
      case KeyType.equal:
        backgroundColor = AppPallete.primary;
        labelColor = Colors.white;
      case KeyType.delete:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      case KeyType.divide:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;

      case KeyType.multiply:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      case KeyType.minus:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      case KeyType.plus:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      case KeyType.plusMinus:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      case KeyType.percent:
        backgroundColor = Colors.white;
        labelColor = AppPallete.primary;
      default:
        labelColor = Colors.black;
        backgroundColor = Colors.white;
    }

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.050),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.grey.withValues(alpha: 0.050),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Center(
          child: keyButton.label != null
              ? Text(
                  keyButton.label!,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: labelColor,
                    // color: textColor,
                  ),
                )
              : FaIcon(
                  keyButton.icon,
                  size: 24,
                  color: labelColor,
                ),
        ),
      ),
    );
  }
}
