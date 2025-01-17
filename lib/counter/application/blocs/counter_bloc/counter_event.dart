part of 'counter_bloc.dart';

/// ### Counter Event
/// This class is used to define the events that can be dispatched to the bloc.
/// 
/// #### Author
/// Gonzalo Quedena
abstract class CounterEvent {
  const CounterEvent();
}

/// ### Counter Increased
/// This event is dispatched when the counter is increased.
/// 
/// #### Properties
/// - [value]: The value to increase the counter.
/// 
/// #### Author
/// Gonzalo Quedena
class CounterIncreased extends CounterEvent {
  final int value;

  const CounterIncreased({required this.value});
}

/// ### Counter Reset
/// This event is dispatched when the counter is reset.
/// 
/// #### Author
/// Gonzalo Quedena
class CounterReset extends CounterEvent {
}