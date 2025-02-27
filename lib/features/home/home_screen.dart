import 'package:calculator/features/home/widget/costom_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String finalResult = "0";
  String displayResult = "0";
  String result = "0";
  double num1 = 0;
  double num2 = 0;
  String op = "";
  bool isOperatorPressed = false;
  Color containerColor = Colors.yellow.shade800;

  void operationFun(String text1) {
    if (text1 == "C") {
      finalResult = "0";
      displayResult="0";
      result = "0";
      num1 = 0;
      num2 = 0;
      op = "";
      isOperatorPressed = true;
    } else if (text1 == "+" || text1 == "-" || text1 == "÷" || text1 == "×") {
      num1 = double.parse(finalResult);
      op = text1;
      displayResult = finalResult + text1;
      finalResult = "";
       containerColor = Colors.white;
      isOperatorPressed = true;
    } else if (text1 == ".") {
      if (!finalResult.contains(".")) {
        result = result + text1;
        displayResult=finalResult;
      }
    } else if (text1 == "=") {
      if (result.isNotEmpty) {
        num2 = double.parse(result);
        if (op == "+") {
          finalResult = (num1 + num2).toString();
        } else if (op == "-") {
          finalResult = (num1 - num2).toString();
        } else if (op == "÷") {
          finalResult = (num1 / num2).toString();
        } else if (op == "×") {
          finalResult = (num1 * num2).toString();
        }
        if (finalResult.endsWith(".0")) {
          finalResult = finalResult.substring(0, finalResult.length - 2);
        }
        displayResult=finalResult;
        result = finalResult;
        op="";
        isOperatorPressed = false;
      }
    } else if (text1 == "%") {
      if (result.isNotEmpty) {
        num2 = double.parse(result);
        result = (num2 / 100).toString();
      }
    } else if (text1 == "+/-") {
      if (result.contains("-")) {
        result = result.substring(1);
      } else {
        result = "-$result";
      }
      finalResult = result;
    } else {
      if (isOperatorPressed) {
        result = text1;
        isOperatorPressed = false;
      } else {
        if (finalResult == "0") {
          result = text1;
        } else {
          result = result + text1;
        }
      }
      finalResult = result;
      displayResult=finalResult;
    }
    setState(() {
      finalResult = result;
      displayResult=finalResult;
      containerColor=Colors.yellow.shade800;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  finalResult.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: "C",
                  conColor: Colors.white54,
                  textColor: Colors.black,
                  onPressed: () {
                    operationFun("C");
                  },
                ),
                CustomContainer(
                  text: "+/-",
                  conColor: Colors.white54,
                  textColor: Colors.black,
                  onPressed: () {
                    operationFun("+/-");
                  },
                ),
                CustomContainer(
                  text: "%",
                  conColor: Colors.white54,
                  textColor: Colors.black,
                  onPressed: () {
                    operationFun("%");
                  },
                ),
                CustomContainer(
                  text: "÷",
                  conColor: containerColor,
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("÷");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: "7",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("7");
                  },
                ),
                CustomContainer(
                  text: "8",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("8");
                  },
                ),
                CustomContainer(
                  text: "9",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("9");
                  },
                ),
                CustomContainer(
                  text: "×",
                  conColor: Colors.yellow.shade800,
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("×");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: "4",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("4");
                  },
                ),
                CustomContainer(
                  text: "5",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("5");
                  },
                ),
                CustomContainer(
                  text: "6",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("6");
                  },
                ),
                CustomContainer(
                  text: "-",
                  conColor: Colors.yellow.shade800,
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("-");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: "1",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("1");
                  },
                ),
                CustomContainer(
                  text: "2",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("2");
                  },
                ),
                CustomContainer(
                  text: "3",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("3");
                  },
                ),
                CustomContainer(
                  text: "+",
                  conColor: Colors.yellow.shade800,
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("+");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: "0",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("0");
                  },
                ),
                CustomContainer(
                  text: ".",
                  conColor: const Color(0xff474747),
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun(".");
                  },
                ),
                CustomContainer(
                  text: "=",
                  conColor: Colors.yellow.shade800,
                  textColor: Colors.white,
                  onPressed: () {
                    operationFun("=");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
