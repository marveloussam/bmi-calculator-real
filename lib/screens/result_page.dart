import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResults, @required this.interpretation, @required this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: Text('BMI CALCULATOR'),

      ),

      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[

          Expanded(
            
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: KTitleTextStyle, ),

            ),    
              
          ),

          Expanded(
            
            flex: 5,
            
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Text(resultText.toUpperCase(), style: KResultTextStyle,),

                  Text( bmiResults, style: KBMITextStyle,),

                  Text(interpretation, 
                  textAlign: TextAlign.center,
                  style: KBodyTextStyle,)



                ],
              ),             
              
              )
          
          
          
          ),

          BottomButton(buttonTitle:'RE-CALCULATE',
          
          onTap: () {

            Navigator.pop(context);

            }, 
          
          )



        ],
      )

    );
      
    
  }
}