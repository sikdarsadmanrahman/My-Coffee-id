import 'package:coffee_card/styled_button.dart';
import 'package:coffee_card/styled_text.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs > createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int suger = 0;
  int strength = 1;

  void increaseStrength(){
    setState(() {
      strength = strength<5 ? strength+1 : 1;
    });
  }
  void increaseSugerCube(){
    setState(() {
      suger = suger<5 ? suger+1 : 0;
    });
  }

  @override
  Widget build (BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledText(text: 'Strength: '),
            
            for(int i=0; i<strength; i++)
              Image.asset('assets/img/coffee_bean.jpg',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseStrength,
              child: Text('+'),  
            )
          ],
        ),
        Row(
          children: [
            StyledText(text: 'Suger: '),
            
            if(suger==0)
              const Text('No Suger'),
            for(int i=0; i<suger; i++)
              Image.asset('assets/img/suger_cubes.jpg',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded(child: SizedBox()),
            StyledButton(
             onPressed: increaseSugerCube,
             child: Text('+'),
            )
          ],
        ),
      ],
    );
  }
}