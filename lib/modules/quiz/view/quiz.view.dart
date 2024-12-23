import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/modules/quiz/controller/quiz.controller.dart';

class QuizView extends StatelessWidget {
  QuizView({super.key});

  final QuizController quizController = QuizController();

  @override
  Widget build(BuildContext context) {
    quizController.init();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text(
            "Edepto Quiz",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )),
      body: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              minHeight: 200,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Text(
              "What is the name of the Greek god of war?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => MaterialButton(
                onPressed: () => quizController.onQuizOptionClick(0),
                padding: const EdgeInsets.all(16),
                visualDensity: VisualDensity.compact,
                highlightColor: Colors.transparent,
                color: quizController.selectedOption.value == 0
                    ? Colors.green
                    : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.amber,
                      ),
                      child: const Text(
                        "a",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Apollo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: quizController.selectedOption.value == 0
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => MaterialButton(
                onPressed: () => quizController.onQuizOptionClick(1),
                padding: const EdgeInsets.all(16),
                visualDensity: VisualDensity.compact,
                highlightColor: Colors.transparent,
                color: quizController.selectedOption.value == 1
                    ? Colors.green
                    : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.blue,
                      ),
                      child: const Text(
                        "b",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Zeus",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: quizController.selectedOption.value == 1
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => MaterialButton(
                onPressed: () => quizController.onQuizOptionClick(2),
                padding: const EdgeInsets.all(16),
                visualDensity: VisualDensity.compact,
                highlightColor: Colors.transparent,
                color: quizController.selectedOption.value == 2
                    ? Colors.green
                    : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.deepPurpleAccent,
                      ),
                      child: const Text(
                        "c",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Ares",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: quizController.selectedOption.value == 2
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => MaterialButton(
                onPressed: () => quizController.onQuizOptionClick(3),
                padding: const EdgeInsets.all(16),
                visualDensity: VisualDensity.compact,
                highlightColor: Colors.transparent,
                color: quizController.selectedOption.value == 3
                    ? Colors.green
                    : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.lightGreen,
                      ),
                      child: const Text(
                        "d",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Hermes",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: quizController.selectedOption.value == 3
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Obx(
            () => quizController.selectedOption.value <= 3
                ? SizedBox(
                    height: 50,
                    width: 50,
                    child: MaterialButton(
                      onPressed: () {
                        quizController.cancelTimer();
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => QuizView()),
                        );
                      },
                      padding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      color: Colors.blueAccent,
                      child: const Icon(
                        Icons.navigate_next_rounded,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Obx(
                  () => Container(
                    width: (Get.width / 30) * (30 - quizController.count.value),
                    height: 45,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.timer_rounded,
                      size: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Obx(
                      () => Text(
                        "Time Left: ${quizController.count}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
