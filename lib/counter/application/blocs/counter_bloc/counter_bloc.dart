import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

/// ### Counter Bloc
/// This is the main business logic component of the counter feature. It extends the `Bloc` class from the `flutter_bloc` package.
/// 
/// #### Events
/// - [CounterIncreased] - This event is dispatched when the counter needs to be increased.
/// - [CounterReset] - This event is dispatched when the counter needs to be reset.
/// 
/// #### States
/// - [CounterState] - This state is used to hold the current state of the counter.
/// 
/// #### Author
/// Gonzalo Quedena
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  
  CounterBloc() : super(CounterState()) {
    on<CounterIncreased>(_onCounterIncreased);
    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1,
      ),
    );
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        counter: 0,
      ),
    );
  }
}
