import 'package:get/get.dart';

class SomaController extends GetxController {
  var books = 0.obs;

  increment() {
    books.value++;
  }

  decrement() {
    books.value--;
  }
}
