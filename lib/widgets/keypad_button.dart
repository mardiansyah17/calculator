import 'package:calculator/theme/app_pallete.dart';
import 'package:calculator/model/key_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeyPadButton extends StatelessWidget {
  final KeyModel keyButton;
  final Function() onPressed;
  const KeyPadButton({
    super.key,
    required this.keyButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    late Color labelColor;
    late Color backgroundColor;
    switch (keyButton.value) {
      case "c":
        labelColor = AppPallete.primary;
        backgroundColor = colorScheme.surface;
      case "=":
        backgroundColor = colorScheme.primaryContainer;
        labelColor = Colors.white;
      case "del":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "/":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "%":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "+/-":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "x":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "-":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      case "+":
        backgroundColor = colorScheme.surface;
        labelColor = AppPallete.primary;
      default:
        labelColor = colorScheme.onSurface;
        backgroundColor = colorScheme.surface;
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
        onPressed: onPressed,
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
