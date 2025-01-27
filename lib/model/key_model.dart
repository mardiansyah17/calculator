import 'package:flutter/material.dart';

class KeyModel {
  final String value;
  final String? label;
  final IconData? icon;

  KeyModel({
    required this.value,
    this.label,
    this.icon,
  });
}
