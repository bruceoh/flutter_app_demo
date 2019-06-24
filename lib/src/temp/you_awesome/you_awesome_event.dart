import 'dart:async';
import 'package:bruce_app_demo/src/temp/you_awesome/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class YouAwesomeEvent {
  Future<YouAwesomeState> applyAsync(
      {YouAwesomeState currentState, YouAwesomeBloc bloc});
  //final YouAwesomeProvider _youAwesomeProvider = new YouAwesomeProvider();
}

class LoadYouAwesomeEvent extends YouAwesomeEvent {
  @override
  String toString() => 'LoadYouAwesomeEvent';

  @override
  Future<YouAwesomeState> applyAsync(
      {YouAwesomeState currentState, YouAwesomeBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 2));
      //this._youAwesomeProvider.test();
      return new InYouAwesomeState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorYouAwesomeState(_?.toString());
    }
  }
}
