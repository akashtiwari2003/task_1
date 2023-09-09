import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  String output = "0";
  String _output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = " ";

  buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = " ";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "*" ||
        buttonText == "/" ||
        buttonText == "%"
    ) {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (!_output.contains(".")) {
        // If output is empty or only contains a "-", add leading "0"
        if (_output.isEmpty || _output == "-") {
          _output += "0.";
        } else {
          _output += buttonText;
        }
      }
    } else if (buttonText == "=") {
      num2=double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      if (operand == "%") {
        _output = (num1 % num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = " ";
    } else {
      _output = _output + buttonText;
    }
    print(_output);
    setState(() {
      double number = double.parse(_output);
      output = number.toStringAsFixed(number.truncateToDouble() == number ? 0 : 1);
    });
    // _output = "0";
  }
  /*

  Widget buildButton(String buttonText) {
    return ElevatedButton(child: Text(buttonText),
        onPressed: () => buttonPressed(buttonText)
    );
  }

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        //height: ,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(bottom: 450),
              child: Text(
                output,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white),
              ),
            ),
            Column(
              children: [

                //ROW 1

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed:() => buttonPressed("AC"),
                        child: const Text(
                          "AC",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () =>  buttonPressed("."),
                        child: const Text(
                          ".",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),

                //ROW 2

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("7"),
                        child: const Text(
                          "7",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed:() =>  buttonPressed("8"),
                        child: const Text(
                          "8",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () =>  buttonPressed("9"),
                        child: const Text(
                          "9",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("*"),
                        child: const Text(
                          "X",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //ROW 3

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed:() =>  buttonPressed("4"),
                        child: const Text(
                          "4",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("5"),
                        child: const Text(
                          "5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("6"),
                        child: const Text(
                          "6",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("-"),
                        child: const Text(
                          "-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //ROW 4

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("1"),
                        child: const Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("2"),
                        child: const Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("3"),
                        child: const Text(
                          "3",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("+"),
                        child: const Text(
                          "+",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //ROW 5

                Row(
                  children: [
                    const SizedBox(
                        width: 10
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("0"),
                        child: const Text(
                          "0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed:() =>  buttonPressed("%"),
                        child: const Text(
                          "%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed:() =>  buttonPressed("/"),
                        child: const Text(
                          "/",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white30),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.amberAccent)),
                        onPressed: () => buttonPressed("="),
                        child: const Text(
                          "=",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
