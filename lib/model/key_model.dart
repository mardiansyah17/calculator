import 'package:flutter/material.dart';

class KeyModel {
  final KeyType key;
  final String? label;
  final IconData? icon;

  KeyModel({
    required this.key,
    this.label,
    this.icon,
  });
}

enum KeyType {
  ac,
  plusMinus,
  percent,
  divide,
  seven,
  eight,
  nine,
  multiply,
  four,
  five,
  six,
  minus,
  one,
  two,
  three,
  plus,
  zero,
  dot,
  equal,
  delete,
}
