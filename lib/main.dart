import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ResultPage.dart';
void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
    
    ),
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
            textAlign: TextAlign.center,
             style: TextStyle(
              fontSize: 16,
            ),
          )
        ),
        body: HomePage(),
      ),
    ),
    
 )




);


