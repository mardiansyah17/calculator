part of 'calculator_cubit.dart';

class CalculatorState extends Equatable {
  final String input;
  final String output;
  const CalculatorState({this.input = '0', this.output = '0'});

  @override
  List<Object> get props => [input, output];

  CalculatorState copyWith({
    String? input,
    String? output,
  }) {
    log("cakep guyts");
    return CalculatorState(
      input: input ?? this.input,
      output: output ?? this.output,
    );
  }
}

final class CalculatorInitial extends CalculatorState {}
