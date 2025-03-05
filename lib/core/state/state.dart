import 'package:flutter/material.dart';

enum StateEnum { isLoading, hasSuccess, hasError, idle }

class StateNotifier extends ValueNotifier<StateEnum> {
  StateNotifier() : super(StateEnum.idle);

  StateNotifier.isLoading() : super(StateEnum.isLoading);
  StateNotifier.hasSuccess() : super(StateEnum.hasSuccess);
  StateNotifier.hasError() : super(StateEnum.hasError);

  void updateState({required StateEnum newState}) {
    value = newState;
    notifyListeners();
  }

  bool get isLoading => value == StateEnum.isLoading;
  bool get isIdle => value == StateEnum.idle;
  bool get isSuccess => value == StateEnum.hasSuccess;
  bool get isError => value == StateEnum.hasError;
}
