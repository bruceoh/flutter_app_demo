import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class YouAwesomeState extends Equatable {
  YouAwesomeState([Iterable props]) : super(props);

  /// Copy object for use in action
  YouAwesomeState getStateCopy();
}

/// UnInitialized
class UnYouAwesomeState extends YouAwesomeState {
  @override
  String toString() => 'UnYouAwesomeState';

  @override
  YouAwesomeState getStateCopy() {
    return UnYouAwesomeState();
  }
}

/// Initialized
class InYouAwesomeState extends YouAwesomeState {
  @override
  String toString() => 'InYouAwesomeState';

  @override
  YouAwesomeState getStateCopy() {
    return InYouAwesomeState();
  }
}

class ErrorYouAwesomeState extends YouAwesomeState {
  final String errorMessage;

  ErrorYouAwesomeState(this.errorMessage);
  
  @override
  String toString() => 'ErrorYouAwesomeState';

  @override
  YouAwesomeState getStateCopy() {
    return ErrorYouAwesomeState(this.errorMessage);
  }
}
