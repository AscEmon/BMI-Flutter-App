import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'reusableCard.dart';
import 'RoundButton.dart';
import 'ResultPage.dart';
import 'Calculator_brain.dart';

const cardColor=Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111333);
int height=180;
int weight=60;
int Age=25;
enum Gender{
  male,
  female

}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.male;
                        print('Men is pressed');
                      
                    });
                    },
                   
                     child: ReusableCard(
                       colour:selectedGender==Gender.male?cardColor:inactiveCardColor,
                      cardChild: iconContent(iconData: FontAwesomeIcons.mars,lebel: 'MALE',),
                      
                      ),
                  )),
      
                Expanded(
                        child:GestureDetector(
                          onTap: (){
                            setState(() {
                              selectedGender=Gender.female;
                            });


                          },
                            child: ReusableCard(
                            cardChild: iconContent(iconData: FontAwesomeIcons.venus,lebel: 'FEMALE',),
                            colour: selectedGender==Gender.female?cardColor:inactiveCardColor,
                            ),
                        ))

              ],
            ),         
          ),

 Expanded(
         child:ReusableCard(
           cardChild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Text('HEIGHT',
               
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 18,
                fontStyle: FontStyle.normal
               ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: <Widget>[
                   Text(
                     height.toString(),
                     style:TextStyle(
                       color: Colors.white,
                       fontSize: 50,
                       fontStyle: FontStyle.normal,
                       fontWeight: FontWeight.w900

                     ),
                    
                   ),
                   Text(
                     'cm',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                      ),


                   )




                 ],



               ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: Colors.pink,
              activeTrackColor: Colors.white,
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30)

            ),
            

              child: Slider(

              value: height.toDouble(),
              min: 120,
              max: 250,   
            
              inactiveColor: Colors.grey,
              onChanged: (double newValue) {
                    setState(() {
                   height = newValue.round();
                     });   },
            ),
          )

       ],
            
    ),
          
           colour: cardColor,
          
     ) ),
       
 Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          'WEIGHT',
                          style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.normal,

                          ),
                        ),
                        Text(
                          weight.toString(),
                          style:TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900
                     ),
                   ),
                   
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       RoundIconButton(icon: FontAwesomeIcons.minus,
                       onPressed: (){
                         setState(() {
                           weight--;

                         });


                       },

                        ),
                       SizedBox(
                         width: 10,
                       ),
                       RoundIconButton(icon: FontAwesomeIcons.plus,
                       
                        onPressed: (){
                         setState(() {
                           weight++;

                         });


                       },

                       
                       
                       )
                     ],
                   )
                   
                   
                     ],



                    ),
                    
                    colour: cardColor)),
                Expanded(
                  child:ReusableCard(
                    
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          'AGE',
                          style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.normal,

                          ),
                        ),
                        Text(
                          Age.toString(),
                          style:TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900
                     ),
                   ),
                   
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       RoundIconButton(icon: FontAwesomeIcons.minus,
                       onPressed: (){
                         setState(() {
                           Age--;

                         });


                       },

                        ),
                       SizedBox(
                         width: 10,
                       ),
                       RoundIconButton(icon: FontAwesomeIcons.plus,
                       
                        onPressed: (){
                         setState(() {
                           Age++;

                         });


                       },

                       
                       
                       )
                     ],
                   )
                   
                   
                     ],



                    ),
                    colour: cardColor))
         ],
       )),

       GestureDetector(
         onTap: (){
          Calculator_brain calc=Calculator_brain(heights: height,weights: weight);
          Navigator.push(context,
          MaterialPageRoute(
            builder: (context)
          {
            return ResultPage(
              bmiResult: calc.Calculation(),
              bmiCalculaation:calc.getResult() ,
              bmiInterpretation: calc.getInterpretation(),
            );
          }));
         },
          child: Container(
          child: Center(child: Text('CALCULATOR',style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),)),
           height: 80,
           width: double.infinity,
           color: Color(0xFFEB1555),
           margin: EdgeInsets.only(top:20),
          
         ),
       )
  ],
  )
  );
 }
}







    