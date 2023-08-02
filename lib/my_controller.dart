import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  void incrementBooks() {
    books.value++;
  }

  void decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar(
        'Buying Books',
        "Can not be less then zero",
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }

  void incrementPens() {
    pens.value++;
  }

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
        'Buying Pens',
        "Can not be less then zero",
        icon: const Icon(
          Icons.alarm,
          color: Colors.red,
        ),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      pens.value--;
    }
  }
}
