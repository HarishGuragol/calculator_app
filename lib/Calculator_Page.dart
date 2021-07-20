import 'package:flutter/material.dart';
import 'number.dart';
import 'constants.dart';
import 'brain.dart';

// ignore: camel_case_types
class Calculator_Page extends StatefulWidget {
  @override
  _Calculator_PageState createState() => _Calculator_PageState();
}

// ignore: camel_case_types
class _Calculator_PageState extends State<Calculator_Page> {
  String n1 = '', n2 = '', op = '', result = '';
  void setNumbers(String num) {
    setState(() {
      if (op != '') {
        n2 += num;
      } else {
        n1 += num;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 80.0,
              width: double.infinity,
              color: Colors.black,
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          '$n1 $op $n2',
                          style: kTextStyleMain,
                        ),
                      ),
                    ),
                    Text(
                      result,
                      style: kTextStyleMain,
                    ),
                    SizedBox(
                      height: 60.0,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            //  margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: number(
                        num: 'C',
                        onTap: () {
                          setState(() {
                            n1 = '';
                            n2 = '';
                            op = '';
                            result = '';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: number(
                        num: '/',
                        onTap: () {
                          setState(() {
                            op = '/';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: number(
                        num: '*',
                        onTap: () {
                          setState(() {
                            op = '*';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: number(
                        num: '-',
                        onTap: () {
                          setState(() {
                            op = '-';
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: number(
                                        num: '7',
                                        onTap: () {
                                          setNumbers('7');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: number(
                                        num: '8',
                                        onTap: () {
                                          setNumbers('8');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: number(
                                        num: '9',
                                        onTap: () {
                                          setNumbers('9');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: number(
                                        num: '4',
                                        onTap: () {
                                          setNumbers('4');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: number(
                                        num: '5',
                                        onTap: () {
                                          setNumbers('5');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: number(
                                        num: '6',
                                        onTap: () {
                                          setNumbers('6');
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: number(
                            num: '+',
                            onTap: () {
                              setState(() {
                                op = '+';
                              });
                            },
                          )),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: number(
                                          num: '1',
                                          onTap: () {
                                            setNumbers('1');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: number(
                                          num: '2',
                                          onTap: () {
                                            setNumbers('2');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: number(
                                          num: '3',
                                          onTap: () {
                                            setNumbers('3');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: number(
                                          num: '0',
                                          onTap: () {
                                            setNumbers('0');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: number(
                                          num: '.',
                                          onTap: () {
                                            setNumbers('.');
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: number(
                                num: '=',
                                onTap: () {
                                  CalculatorBrain brain = CalculatorBrain(
                                      v1: double.parse(n1),
                                      v2: double.parse(n2),
                                      op: op);
                                  setState(
                                    () {
                                      result = brain.getres().toString();
                                      n1 = '';
                                      op = '';
                                      n2 = '';
                                    },
                                  );
                                },
                              ),
                            ),
                            // flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
