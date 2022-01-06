import 'package:calculator_app/components/calcBtn.dart';
import 'package:calculator_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'components/exText.dart';
import 'components/navBar.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';
  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void allClear(String text) {
    setState(() {
      _expression = '';
      _history = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(kPrimaryColor),
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: const Color(kPrimaryColor),
          title: const Text(
            'Calculator',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ExText(
              text: _history,
              fontSize: 24,
              textColor: ktxtColor,
            ),
            ExText(
              text: _expression,
              fontSize: 48,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(
                  onPress: allClear,
                  text: 'AC',
                  fillColor: kbgButton,
                ),
                CalcButton(
                  onPress: clear,
                  text: 'C',
                  fillColor: kbgButton,
                ),
                CalcButton(
                  onPress: numClick,
                  text: '%',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
                CalcButton(
                  onPress: numClick,
                  text: '/',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(
                  onPress: numClick,
                  text: '7',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '8',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '9',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '*',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(
                  onPress: numClick,
                  text: '4',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '5',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '6',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '-',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(
                  onPress: numClick,
                  text: '1',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '2',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '3',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '+',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalcButton(
                  onPress: numClick,
                  text: '.',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '0',
                ),
                CalcButton(
                  onPress: numClick,
                  text: '00',
                ),
                CalcButton(
                  onPress: evaluate,
                  text: '=',
                  fillColor: kOpButton,
                  textColor: kOpTxtColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
