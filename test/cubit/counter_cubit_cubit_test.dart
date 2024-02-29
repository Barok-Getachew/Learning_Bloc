import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learning_bloc/logic/cubit/counter_cubit_cubit.dart';

void main() {
  group('description', () {
    CounterCubit counterCubit = CounterCubit();

    test('description', () {
      expect(counterCubit.state,
          CounterState(wasIncreamented: true, counterValue: 0));
    });

    blocTest("checking the increment and the deacremnt function",
        build: () => counterCubit,
        act: (cubit) => cubit.increament(),
        expect: () => [CounterState(counterValue: 1, wasIncreamented: true)]);
  });
}
