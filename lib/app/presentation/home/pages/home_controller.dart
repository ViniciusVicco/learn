import 'package:learn/app/presentation/home/pages/home_store.dart';
import 'package:learn/core/module/controller.dart';

class HomeController extends Controller {
  final HomeStore store;
  HomeController({required this.store});
  void printar() {
    print("Print printoso N ${store.qtdPrintPrintoso}");
    store.qtdPrintPrintoso++;
  }
}
