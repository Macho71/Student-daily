import 'package:flutter/material.dart';
import 'package:student_daily/login_page/Login_Home1.dart';
import 'package:student_daily/widjets/Doctor_Appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Login_home1());
  }
}
