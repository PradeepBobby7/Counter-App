import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  CounterObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    //ignore: avoid_print
    print('${bloc.runtimeType}$change');
  }
}
