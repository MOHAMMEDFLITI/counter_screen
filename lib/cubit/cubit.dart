import 'package:counter_cubit_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;

  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) =>
      BlocProvider.of(context);

  void minus() {
    counter--;
    emit(CounterMinusState(counter: counter));
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter: counter));
  }
}
