import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(const CounterInitial()) {
    on<IncreamentEvent>(((event, emit) {
      emit(CounterValueChangedState(counter: ++counter));
    }));
    on<DecreamentEvent>(((event, emit) {
      emit(CounterValueChangedState(counter: --counter));
    }));
    on<ResetEvent>(((event, emit) {
      counter = 0;
      emit(CounterValueChangedState(counter: counter));
    }));
  }
}
