import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<CounterState> {
  CounterCubitCubit() : super(CounterState(counterValue: 0));

  void increament() => emit(CounterState(counterValue: state.counterValue + 1));
  void decreament() => emit(CounterState(counterValue: state.counterValue - 1));
}
