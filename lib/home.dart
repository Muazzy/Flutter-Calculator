import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = "0";
  String result = "0";
  String expression = "";

  //calculator logic
  onClicked(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        output = "0";
        result = "0";
      } else if (buttonText == '=') {
        expression = output;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }

        output = result;
      } else {
        if (output == "0") {
          output = buttonText;
        } else {
          output = output + buttonText;
        }
      }
    });
  }

  //Button widget
  Widget circleButton({@required String buttonText, @required Color btnColor}) {
    bool isLightGrey = false;
    if (btnColor == Colors.grey[400]) {
      isLightGrey = true;
    }

    bool isZeroButton = false;
    if (buttonText == '0') {
      isZeroButton = true;
    }

    bool isDarkGrey = false;
    if (btnColor == Colors.grey[800]) {
      isDarkGrey = true;
    }

    return isZeroButton
        ?
        //zero button
        Expanded(
            flex: 2,
            child: MaterialButton(
              // highlightColor: Colors.grey,
              color: btnColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(width: 8),
              ),
              onPressed: () => onClicked(buttonText),
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: isLightGrey ? Colors.black : Colors.white,
                      fontSize: 35),
                ),
              ),
            ),
          )

        //other buttons
        : Expanded(
            flex: 1,
            child: MaterialButton(
              shape: CircleBorder(),
              color: btnColor,
              highlightColor: isDarkGrey || isLightGrey
                  ? Colors.grey[600]
                  : Colors.orange[700],
              onPressed: () {
                onClicked(buttonText);
              },
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: isLightGrey ? Colors.black : Colors.white,
                      fontSize: 30),
                ),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // TextOutput
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Text(
                    output,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
              ),
            ),

            //Divider
            Divider(
              height: 20,
            ),
            //for Buttons
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.fromLTRB(3, 10, 3, 2),
                child: Column(
                  children: [
                    //1st row
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circleButton(
                            buttonText: 'AC',
                            btnColor: Colors.grey[400],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '+/-',
                            btnColor: Colors.grey[400],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '%',
                            btnColor: Colors.grey[400],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '÷',
                            btnColor: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    //2nd row
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circleButton(
                            buttonText: '7',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '8',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '9',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                              buttonText: '×', btnColor: Colors.orange),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    //3rd row
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circleButton(
                            buttonText: '4',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '5',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '6',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                              buttonText: '-', btnColor: Colors.orange),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    //4th row
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circleButton(
                            buttonText: '1',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '2',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '3',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                              buttonText: '+', btnColor: Colors.orange),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    //5th row
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circleButton(
                            buttonText: '0',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '.',
                            btnColor: Colors.grey[800],
                          ),
                          SizedBox(width: 10),
                          circleButton(
                            buttonText: '=',
                            btnColor: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
