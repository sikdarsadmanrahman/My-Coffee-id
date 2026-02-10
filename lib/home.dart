import 'package:coffee_card/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:coffee_card/coffee_prefs.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('My Coffee Id', style: TextStyle(
            color: Colors.white,
             fontWeight: FontWeight.bold)
             ),
          ),
          backgroundColor: Colors.brown[700],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: StyledText(text:'How  I like my coffee...',),
            ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: CoffeePrefs(),
            ),
            Expanded(
              child: Image.asset('assets/img/coffee_bg.jpg',
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
        )
          
      );
  }
}