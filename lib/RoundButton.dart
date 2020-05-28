import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  
RoundIconButton({@required this.icon,@required this.onPressed});

final IconData icon;
final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: Icon(icon,color: Colors.white,),
        onPressed:onPressed,
        shape: CircleBorder(),
        elevation: 8,
        disabledElevation: 8,
        fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(
          height: 56,
          width: 56,

        ),
      ),
      
    );
  }
}