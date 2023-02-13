import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String number = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    number = "9";
                    setState(() {});
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
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("8"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("7"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("+"),
                      onPressed: () {},
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("6"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("5"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("4"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      child: Text("-"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {},
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("3"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("2"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("1"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("*"),
                      onPressed: () {},
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text("C"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text("0"),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("="),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text("/"),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
