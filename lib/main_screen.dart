import 'package:calculator/cubit/cubit/calculator_cubit.dart';
import 'package:calculator/widgets/keypad.dart';
import 'package:calculator/widgets/screen_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Kalkulator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.moon),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (context) => CalculatorCubit(),
          child: BlocBuilder<CalculatorCubit, CalculatorState>(
            builder: (context, state) {
              final cubit = context.read<CalculatorCubit>();
              return Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ScreenCalculator(
                    input: state.input,
                    output: state.output,
                  ),
                  KeyPad(
                    cubit: cubit,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
