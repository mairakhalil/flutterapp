import 'package:flutter/material.dart';
import 'package:screens_tkieroapp/view/365_Screens/pages/pay_in.dart';
import 'package:screens_tkieroapp/view/365_Screens/pages/pay_out.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: PayInScreen(),
      // home: PayOutScreen(),
    );
  }
}
