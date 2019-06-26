import './counter_event.dart';
import 'dart:async';

class CounterBLoC{
  final _counterStreamController = StreamController<int>();
StreamSink<int> get counter_sink => _counterStreamController.sink;

  int _counter = 0;
  // to be updated with a StreamSink!
  _count(CounterEvent event) => _counter++;
  
}

