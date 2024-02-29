part of 'counter_cubit_cubit.dart';

final class CounterState extends Equatable {
  final int counterValue;
  final bool wasIncreamented;

  CounterState({required this.wasIncreamented, required this.counterValue});

  @override
  // TODO: implement props
  List<Object?> get props => [counterValue, wasIncreamented];
}
