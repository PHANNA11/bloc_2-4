part of 'count_bloc.dart';

@immutable
abstract class CountEvent {}

class IncrementEvent extends CountEvent {}

class DecrementEvent extends CountEvent {}
