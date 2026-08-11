import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc {
  CounterState state = const CounterState(count: 0);

  void add(CounterEvent event) {
    if (event is IncrementCounter) {
      state = CounterState(
        count: state.count + 1,
      );
    } else if (event is DecrementCounter) {
      state = CounterState(
        count: state.count > 0 ? state.count - 1 : 0,
      );
    }
  }
}
