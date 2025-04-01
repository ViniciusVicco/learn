import 'package:flutter/material.dart';

enum ViewStateEnum { isLoading, hasSuccess, hasError, idle }

class ViewStateNotifier extends ValueNotifier<ViewStateEnum> {
  ViewStateNotifier() : super(ViewStateEnum.idle);

  ViewStateNotifier.isLoading() : super(ViewStateEnum.isLoading);
  ViewStateNotifier.hasSuccess() : super(ViewStateEnum.hasSuccess);
  ViewStateNotifier.hasError() : super(ViewStateEnum.hasError);

  void updateState({required ViewStateEnum newState}) {
    value = newState;
    notifyListeners();
  }

  bool get isLoading => value == ViewStateEnum.isLoading;
  bool get isIdle => value == ViewStateEnum.idle;
  bool get isSuccess => value == ViewStateEnum.hasSuccess;
  bool get isError => value == ViewStateEnum.hasError;
}
