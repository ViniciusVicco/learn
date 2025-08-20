import 'package:learn/core/module/store.dart';
import 'package:learn/core/state/app_state.dart';
import 'package:rx_notifier/rx_notifier.dart';

class MenuStore extends Store {
  RxNotifier<AppState> state = RxNotifier(AppState());
}
