import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),

      child: Scaffold(
        appBar: AppBar(title: const Text('Counter')),

        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Counter Value
                  Text(
                    '${state.count}',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Decrement Button
                      ElevatedButton(
                        onPressed: state.count > 0
                            ? () {
                                context.read<CounterBloc>().add(
                                  DecrementCounter(),
                                );
                              }
                            : null,
                        child: const Text('-', style: TextStyle(fontSize: 25)),
                      ),

                      const SizedBox(width: 20),

                      // Increment Button
                      ElevatedButton(
                        onPressed: state.count < 10
                            ? () {
                                context.read<CounterBloc>().add(
                                  IncrementCounter(),
                                );
                              }
                            : null,
                        child: const Text('+', style: TextStyle(fontSize: 25)),
                      ),

                      const SizedBox(width: 20),

                      // Reset Button
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(ResetCounter());

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Counter Reset')),
                          );
                        },
                        child: const Text('Reset'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Maximum Limit Message
                  if (state.count == 10)
                    const Text(
                      'Maximum limit reached',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
