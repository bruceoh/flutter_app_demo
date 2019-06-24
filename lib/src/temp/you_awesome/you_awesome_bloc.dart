import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bruce_app_demo/src/temp/you_awesome/index.dart';

class YouAwesomeBloc extends Bloc<YouAwesomeEvent, YouAwesomeState> {
  static final YouAwesomeBloc _youAwesomeBlocSingleton = new YouAwesomeBloc._internal();
  factory YouAwesomeBloc() {
    return _youAwesomeBlocSingleton;
  }
  YouAwesomeBloc._internal();
  
  YouAwesomeState get initialState => new UnYouAwesomeState();

  @override
  Stream<YouAwesomeState> mapEventToState(
    YouAwesomeEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }
}
