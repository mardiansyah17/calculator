import 'package:calculator/model/key_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<KeyModel> keysButton = [
  KeyModel(label: 'AC', key: KeyType.ac),
  KeyModel(label: '+/-', key: KeyType.plusMinus),
  KeyModel(label: '%', key: KeyType.percent),
  KeyModel(icon: FontAwesomeIcons.divide, key: KeyType.divide),
  KeyModel(label: '7', key: KeyType.seven),
  KeyModel(label: '8', key: KeyType.eight),
  KeyModel(label: '9', key: KeyType.nine),
  KeyModel(icon: FontAwesomeIcons.xmark, key: KeyType.multiply),
  KeyModel(label: '4', key: KeyType.four),
  KeyModel(label: '5', key: KeyType.five),
  KeyModel(label: '6', key: KeyType.six),
  KeyModel(icon: FontAwesomeIcons.minus, key: KeyType.minus),
  KeyModel(label: '1', key: KeyType.one),
  KeyModel(label: '2', key: KeyType.two),
  KeyModel(label: '3', key: KeyType.three),
  KeyModel(icon: FontAwesomeIcons.plus, key: KeyType.plus),
  KeyModel(label: '0', key: KeyType.zero),
  KeyModel(label: ',', key: KeyType.dot),
  KeyModel(icon: FontAwesomeIcons.deleteLeft, key: KeyType.delete),
  KeyModel(icon: FontAwesomeIcons.equals, key: KeyType.equal),
];
