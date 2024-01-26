part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];

  @override
  String toString() {
    return "CounterBlocState ${counter.toString()}";
  }

//factory constructor
factory CounterState.initial(){
  return const CounterState(counter: 0);
}

  CounterState copyWith({int? count}) {
    return CounterState(counter: count ?? this.counter);
  }
}
