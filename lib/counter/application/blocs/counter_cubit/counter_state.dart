part of 'counter_cubit.dart';

/// ### Counter State
/// This class is responsible for holding the state of the counter.
///
/// #### Properties
/// - [counter] - The current value of the counter.
/// - [transactionCount] - The number of transactions that have been made.
///
/// #### Methods
/// - [copyWith] - A method that creates a new instance of the [CounterState] with the provided values.
///
/// #### Author
/// Gonzalo Quedena
class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterState({
    this.counter = 0,
    this.transactionCount = 0,
  });

  copyWith({
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
