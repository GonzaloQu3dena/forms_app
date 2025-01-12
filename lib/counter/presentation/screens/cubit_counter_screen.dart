import 'package:flutter/material.dart';
import 'package:forms_app/counter/presentation/widgets/custom_action_button.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Counter'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: const Text('Counter value : xyz'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButton(
            label: '+3',
            onPressed: () => {},
            heroTag: '1',
          ),
          
          const SizedBox(
            height: 15,
          ),

          CustomActionButton(
            label: '+2',
            onPressed: () => {},
            heroTag: '2',
          ),

          const SizedBox(
            height: 15,
          ),

          CustomActionButton(
            label: '+1',
            onPressed: () => {},
            heroTag: '3',
          ),
        ],
      ),
    );
  }
}