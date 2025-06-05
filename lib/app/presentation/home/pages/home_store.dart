import 'package:learn/core/module/store.dart';
import 'package:learn/core/state/app_state.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomeStore extends Store {
  int qtdPrintPrintoso = 0;
  RxNotifier<AppState> state = RxNotifier(AppState());
}
