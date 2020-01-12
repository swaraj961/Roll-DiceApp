import 'dart:async';
import 'dart:developer' as developer;

import 'package:new_instagrammundefined/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class YouAwesomeEvent {
  Future<YouAwesomeState> applyAsync(
      {YouAwesomeState currentState, YouAwesomeBloc bloc});
  final YouAwesomeRepository _youAwesomeRepository = YouAwesomeRepository();
}

class UnYouAwesomeEvent extends YouAwesomeEvent {
  @override
  Future<YouAwesomeState> applyAsync({YouAwesomeState currentState, YouAwesomeBloc bloc}) async {
    return UnYouAwesomeState(0);
  }
}

class LoadYouAwesomeEvent extends YouAwesomeEvent {
   
  final bool isError;
  @override
  String toString() => 'LoadYouAwesomeEvent';

  LoadYouAwesomeEvent(this.isError);

  @override
  Future<YouAwesomeState> applyAsync(
      {YouAwesomeState currentState, YouAwesomeBloc bloc}) async {
    try {
      if (currentState is InYouAwesomeState) {
        return currentState.getNewVersion();
      }
      await Future.delayed(Duration(seconds: 2));
      this._youAwesomeRepository.test(this.isError);
      return InYouAwesomeState(0, 'Hello world');
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadYouAwesomeEvent', error: _, stackTrace: stackTrace);
      return ErrorYouAwesomeState(0, _?.toString());
    }
  }
}
