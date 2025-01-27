import 'package:calculator/model/key_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<KeyModel> keysButton = [
  KeyModel(
    value: 'c',
    label: 'C',
  ),
  KeyModel(
    value: '+/-',
    label: '+/-',
  ),
  KeyModel(
    value: '%',
    label: '%',
  ),
  KeyModel(
    value: '/',
    icon: FontAwesomeIcons.divide,
  ),
  KeyModel(
    value: '7',
    label: '7',
  ),
  KeyModel(
    value: '8',
    label: '8',
  ),
  KeyModel(
    value: '9',
    label: '9',
  ),
  KeyModel(
    value: 'x',
    icon: FontAwesomeIcons.xmark,
  ),
  KeyModel(
    value: '4',
    label: '4',
  ),
  KeyModel(
    value: '5',
    label: '5',
  ),
  KeyModel(
    value: '6',
    label: '6',
  ),
  KeyModel(
    value: '-',
    icon: FontAwesomeIcons.minus,
  ),
  KeyModel(
    value: '1',
    label: '1',
  ),
  KeyModel(
    value: '2',
    label: '2',
  ),
  KeyModel(
    value: '3',
    label: '3',
  ),
  KeyModel(
    value: '+',
    icon: FontAwesomeIcons.plus,
  ),
  KeyModel(
    value: '0',
    label: '0',
  ),
  KeyModel(
    value: '.',
    label: '.',
  ),
  KeyModel(
    value: '=',
    label: '=',
  ),
  KeyModel(
    value: 'del',
    icon: FontAwesomeIcons.backspace,
  ),
];
