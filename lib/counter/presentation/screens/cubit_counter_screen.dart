import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/counter/presentation/widgets/custom_action_button.dart';
import 'package:forms_app/counter/application/blocs/counter_cubit/counter_cubit.dart';

/// ### Cubit Counter Screen
/// This is the main screen for the Cubit Counter feature. This screen is responsible for displaying the current counter value and providing buttons to increase the counter value.
///
/// #### Author
/// Gonzalo Quedena
class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: _CubitCounterView(),
    );
  }
}

/// ### Cubit Counter View
/// This is the view for the Cubit Counter feature. This view is responsible for displaying the current counter value and providing buttons to increase the counter value.
///
/// #### Methods
/// - [increaseCounterBy] : Increases the counter value by a given value.
///
/// #### Author
/// Gonzalo Quedena
class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  /// ### Increase Counter By [value]
  /// This method increases the counter value by a given value.
  ///
  /// #### Parameters
  /// - [context] : The current context.
  /// - [value] : The value to increase the counter by.
  void increaseCounterBy(BuildContext context, [int value = 1]) {
    context.read<CounterCubit>().increaseBy(value);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterCubit value) => 
          Text('Cubit Counter: ${value.state.transactionCount}'),
        ),
        actions: [
          IconButton(
            onPressed: () => {
              context.read<CounterCubit>().reset(),
            },
            icon: Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('Counter value : ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButton(
            label: '+3',
            onPressed: () => {increaseCounterBy(context, 3)},
            heroTag: '1',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomActionButton(
            label: '+2',
            onPressed: () => {increaseCounterBy(context, 2)},
            heroTag: '2',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomActionButton(
            label: '+1',
            onPressed: () => {increaseCounterBy(context, 1)},
            heroTag: '3',
          ),
        ],
      ),
    );
  }
}
