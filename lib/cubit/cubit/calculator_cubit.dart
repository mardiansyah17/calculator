import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:calculator/extension/string.dart';
import 'package:equatable/equatable.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorInitial());
  void numberPressed(String number) {
    final x = state.input == '0' ? number : state.input + number;
    emit(state.copyWith(input: x));
  }

  void delete() {
    final x = state.input.length == 1
        ? '0'
        : state.input.substring(0, state.input.length - 1);
    emit(state.copyWith(input: x));
  }

  void clear() {
    emit(state.copyWith(input: '0', output: '0'));
  }

  void calculate() {
    try {
      if (state.input.takeLast.contains(RegExp(r'[0-9]'))) {
        final double result = Parser()
            .parse(state.input)
            .evaluate(EvaluationType.REAL, ContextModel());
        emit(state.copyWith(output: result.toStringAsFixed(0)));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
