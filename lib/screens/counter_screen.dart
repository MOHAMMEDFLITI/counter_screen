import 'package:counter_cubit_app/cubit/cubit.dart';
import 'package:counter_cubit_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, CounterStates state) {
          if (state is CounterPlusState) {
            //print('plus state ${state.counter}');
          }
          if (state is CounterMinusState) {
            //print('minus state ${state.counter}');
          }
        },
        builder: (BuildContext context, CounterStates state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text(
                "Counter",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      "PLUS",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text(
                      "MINUS",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
