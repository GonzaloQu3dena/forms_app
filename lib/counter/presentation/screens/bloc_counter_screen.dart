import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/counter/application/blocs/counter_bloc/counter_bloc.dart';
import 'package:forms_app/counter/presentation/widgets/custom_action_button.dart';

/// ### Bloc Counter Screen
/// This is the main screen for the BLoC counter. It uses the `CounterBloc` to manage the state of the counter.
/// 
/// #### Author
/// Gonzalo Quedena
class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const _BlocCounterView(),
    );
  }
}

/// ### Bloc Counter View
/// This is the view for the BLoC counter screen. It displays the current value of the counter and provides buttons to increase the counter value.
/// 
/// #### Methods:
/// - [increaseCounterBy]: Increases the counter value by a given value.
/// - [counterReset]: Resets the counter value to 0.
/// 
/// #### Author
/// Gonzalo Quedena
class _BlocCounterView extends StatelessWidget {
  const _BlocCounterView();

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    context.read<CounterBloc>().add(
          CounterIncreased(value: value),
        );
  }

  void counterReset(BuildContext context) {
    context.read<CounterBloc>().add(CounterReset());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (CounterBloc counterBloc) =>
              Text('BLoC Counter: ${counterBloc.state.transactionCount}'),
        ),
        actions: [
          IconButton(
            onPressed: () => counterReset(context),
            icon: Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc counterBloc) =>
              Text('Counter value : ${counterBloc.state.counter}'),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButton(
            label: '+3',
            onPressed: () => increaseCounterBy(context, 3),
            heroTag: '1',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomActionButton(
            label: '+2',
            onPressed: () => increaseCounterBy(context, 2),
            heroTag: '2',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomActionButton(
            label: '+1',
            onPressed: () => increaseCounterBy(context, 1),
            heroTag: '3',
          ),
        ],
      ),
    );
  }
}
