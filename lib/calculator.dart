import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String number = "";
  String msg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(msg),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      number = '9';
                      setState(() {
                        msg += number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text(
                        "9",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '8';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("8"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '7';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("7"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      setState(() {
                        msg = msg + "+";
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("+"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      number = '6';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("6"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '5';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("5"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '4';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("4"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      setState(() {
                        msg = msg + "-";
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("-"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      number = '3';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("3"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '2';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("2"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '1';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("1"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          msg = msg + "*";
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text("*"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      onPressed: () {
                        setState(() {
                          msg = " ";
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text("C"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      number = '0';
                      setState(() {
                        msg = msg + number;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Text("0"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          Parser p = Parser();
                          Expression exp = p.parse(msg);
                          ContextModel ctx = ContextModel();
                          double eva = exp.evaluate(EvaluationType.REAL, ctx);
                          msg = eva.toString();
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text("="),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          msg = msg + "/";
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text("/"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Footer
// © 2023 GitHub, Inc.
// Footer navigation
// Terms
// Privacy
// Security
// Status
// Docs
// Contact GitHub
// Pricing
// API
// Training
// Blog
// About
// efg/calculator.dart at main · Budhachandra-soibam123/efg