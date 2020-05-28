import 'package:flutter/material.dart';


class iconContent extends StatelessWidget {
     iconContent({@required this.iconData,this.lebel});
     final IconData iconData;
     final String lebel;
    
      @override
      Widget build(BuildContext context) {
        return Container(
          child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                       iconData,
                       color: Colors.white,
                       size: 80,

                        ),
                        SizedBox(
                          height: 10,

                    ),
                        Text(
                          lebel,style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey
                          ),

                        )
       ],


                    ),
        );
      }
    }