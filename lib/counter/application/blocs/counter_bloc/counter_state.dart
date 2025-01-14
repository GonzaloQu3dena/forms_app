part of 'counter_bloc.dart';

/// ### Counter State
/// This class is used to define the state of the counter. The state of the counter is defined by the current value of the counter and the number of transactions that have been made.
///
/// #### Properties
/// - [counter] : The current value of the counter.
/// - [transactionCount] : The number of transactions that have been made.
/// - [props] - A list of properties that are used to compare two instances of the [CounterState].
/// 
/// ### Methods
/// - [copyWith] - A method that creates a new instance of the [CounterState] with the provided values.
///
/// #### Author
/// Gonzalo Quedena
class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterState({
    this.counter = 10,
    this.transactionCount = 0,
  });

  CounterState copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount,
      );

  @override
  List<Object> get props => [counter, transactionCount];
}
