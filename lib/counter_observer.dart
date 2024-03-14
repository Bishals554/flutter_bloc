import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  const CounterObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
