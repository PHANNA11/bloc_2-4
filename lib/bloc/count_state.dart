part of 'count_bloc.dart';

@immutable
class CountState {
  late int count;
  CountState({required this.count});
}

class CountInitial extends CountState {
  CountInitial() : super(count: 0);
}
