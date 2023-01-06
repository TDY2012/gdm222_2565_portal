import 'package:flutter/material.dart';
import 'home.dart';
import 'gdm222/home.dart';
import 'gdm222/year65/home.dart';
import 'gdm222/year65/questionnaire_before_class.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'TDY2012\'s Github Page',
      // Start the app with the "/" named route. In this case, the app starts
      // on the HomeScreen widget.
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/gdm222': (context) => const GDM222Screen(),
        '/gdm222/year65': (context) => const GDM222Year65Screen(),
        // '/gdm222/year65/questionnaire_before_class': (context) => const GDM222Year65QuestionnaireBeforeClassScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Sarabun',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green
        ),
      ),
    ),
  );
}