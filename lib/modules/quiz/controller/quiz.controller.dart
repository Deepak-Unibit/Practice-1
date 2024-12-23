import 'dart:async';
import 'package:get/get.dart';

class QuizController extends GetxController {
  RxInt count = 30.obs;
  late Timer timer;
  RxInt selectedOption = 100.obs;

  init() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (count.value > 0) {
        count.value--;
      } else {
        // count.value = 10;
        cancelTimer();
      }
      print(count.value);
    });
  }

  cancelTimer() {
    timer.cancel();
    print("Cancel Timer");
  }

  onQuizOptionClick(int index) {
    selectedOption.value = index;
    timer.cancel();
    print(index);
  }

  onNextClick() {}
}
