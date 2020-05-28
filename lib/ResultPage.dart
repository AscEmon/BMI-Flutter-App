import 'package:flutter/material.dart';
import 'reusableCard.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({@required this.bmiResult,@required this.bmiCalculaation,@required this.bmiInterpretation});

final String bmiResult;
final String bmiCalculaation;
final String bmiInterpretation;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: Text(
                    'Your Result ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      cardChild: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text(
                              bmiCalculaation,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.greenAccent),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text(
                              bmiResult,
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.only(top: 40,left: 20),
                            child: Text(
                              bmiInterpretation,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'RE-CALCULATOR',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )),
                  height: 80,
                  width: double.infinity,
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top: 20),
                ),
              )
            ],
          )),
    );
  }
}
