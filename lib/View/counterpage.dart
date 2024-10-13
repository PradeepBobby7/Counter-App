import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gounder_app/View/counterview.dart';
import 'package:gounder_app/cupid/cupid.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocProvider(
      create: (_)=>CounterCubit(),
      child: const CounterView()
    );
  }
}