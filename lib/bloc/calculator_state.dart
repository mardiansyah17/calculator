part of 'calculator_bloc.dart';

sealed class CalculatorState extends Equatable {
  final String expresion;
  final String result;
  const CalculatorState(
    this.expresion,
    this.result,
  );
}

class CalculatorInitial extends CalculatorState {
  const CalculatorInitial() : super('0', '0');
  @override
  List<Object> get props => [expresion, result];
}
