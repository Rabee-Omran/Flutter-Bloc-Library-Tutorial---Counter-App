part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter;
  const CounterState({
    required this.counter,
  });
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);
}

class CounterValueChangedState extends CounterState {
  const CounterValueChangedState({required counter}) : super(counter: counter);
}
