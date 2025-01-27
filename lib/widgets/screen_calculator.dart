import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScreenCalculator extends StatelessWidget {
  final String input;
  final String output;
  const ScreenCalculator({
    super.key,
    required this.input,
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    input,
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: input.length > 12 ? 35 : 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  output,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
