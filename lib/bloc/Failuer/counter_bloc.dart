import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterBloc extends Cubit<CounterStates>
{
  int _counter = 40;
  CounterBloc() : super(CounterInitial());

  static CounterBloc get(context) => BlocProvider.of(context);
  get counter => _counter;
  void increment()
  {
    _counter++;
    emit(CounterPlus());
  }

  void decrement()
  {
    _counter--;
    emit(CounterMinus());
  }
}