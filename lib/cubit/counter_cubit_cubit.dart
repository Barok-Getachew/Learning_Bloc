import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<CounterState> {
  CounterCubitCubit()
      : super(CounterState(counterValue: 0, wasIncreamented: true));

  void increament() => emit(CounterState(
      counterValue: state.counterValue + 1, wasIncreamented: true));
  void decreament() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncreamented: false));
}
