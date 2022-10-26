import 'package:flutter/material.dart';

import '../utils/calculator_functions.dart';
import '../utils/margins/y_margin.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              calculatorFunctions.expression,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const YMargin(20),
            Text(
              calculatorFunctions.result,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: 'C',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('C');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '⌫',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('⌫');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '%',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('%');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '/',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('/');
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '7',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('7');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '8',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('8');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '9',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('9');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '*',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('*');
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '4',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('4');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '5',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('5');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '6',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('6');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '-',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('-');
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '1',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('1');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '2',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('2');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '3',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('3');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '+',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('+');
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '0',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('0');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '.',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('.');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '00',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('00');
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: '=',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate('=');
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.08,
      width: size.height * 0.08,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: const CircleBorder(),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
