import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

/// ### Counter Cubit
/// This is the business logic component of the counter feature. It is responsible for managing the state of the counter.
///
/// #### Features
/// - [increaseBy] increases the counter by a given value.
/// - [reset] resets the counter to 0.
///
/// #### Author
/// Gonzalo Quedena
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 5));

  void increaseBy(int value) {
    emit(
      state.copyWith(
        counter: state.counter + value,
        transactionCount: state.transactionCount + 1,
      ),
    );
  }

  void reset() {
    emit(
      state.copyWith(
        counter: 0,
      ),
    );
  }
}
