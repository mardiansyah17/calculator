part of 'calculator_cubit.dart';

sealed class CalculatorState extends Equatable {
  const CalculatorState();

  @override
  List<Object> get props => [];
}

final class CalculatorInitial extends CalculatorState {}
