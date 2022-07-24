import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SumController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        "Buying Books",
        "Can not be less than zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        backgroundColor: Colors.redAccent.shade200,
        isDismissible: true,
        duration: Duration(
          seconds: 3,
        ),
      );
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pens.value++;
  }

  decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
        "Buying Pens",
        "Can not be less than zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        backgroundColor: Colors.redAccent.shade200,
        isDismissible: true,
        duration: Duration(
          seconds: 3,
        ),
      );
    } else {
      pens.value--;
    }
  }
}
