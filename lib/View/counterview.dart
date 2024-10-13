import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gounder_app/cupid/cupid.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(builder: (context, state) {
        return Center(
          child: Text("$state", style: TextTheme.displayMedium),
        );
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              key: const Key('CounterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()),
          const SizedBox(height: 10),
          FloatingActionButton(
              key: const Key('CounterView_decrement_floatingActionButton'),
              child: const Icon(Icons.minimize),
              onPressed: () => context.read<CounterCubit>().decrement()),
        ],
      ),
    );
  }
}
