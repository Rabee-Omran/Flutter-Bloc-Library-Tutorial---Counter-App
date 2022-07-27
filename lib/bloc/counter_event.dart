part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreamentEvent extends CounterEvent{}

class DecreamentEvent extends CounterEvent{}

class ResetEvent extends CounterEvent{}
