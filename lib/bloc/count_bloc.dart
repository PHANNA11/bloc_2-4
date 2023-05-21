import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';
part 'count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(CountInitial()) {
    on<IncrementEvent>((event, emit) {
      emit(CountState(count: state.count + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CountState(count: state.count - 1));
    });
  }
}
