import 'package:bibliteso/pages/home/home_page.dart';
import 'package:bibliteso/pages/loan/loan.dart';
import 'package:bibliteso/pages/profile/profile.dart';
import 'package:bibliteso/pages/reminder/reminder.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BiblITESO',
      home: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BiblITESO',
          // initialRoute: '/home_page',
          home: HomePage(),
          routes: {
            '/home_page' : (context) => HomePage(),
            '/profile' : (context) => Profile(),
            '/reminder' : (context) => Reminder(),
            '/loan' : (context) => Loan(),
        },
      )
    );
  }
}