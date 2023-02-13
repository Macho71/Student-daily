import 'package:flutter/material.dart';
import 'package:student_daily/widjets/colors.dart';
import 'package:student_daily/widjets/home_screen.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            pColor.withOpacity(0.8),
            pColor,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.all(60),
                  child: Image(
                      image: AssetImage(
                    "assets/images/student.png",
                  ))),
              const SizedBox(
                  //  height: 50,
                  ),
              const Text(
                "Daily Online",
                style: TextStyle(
                  color: wColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Appoint Your Student",
                style: TextStyle(
                  color: wColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Material(
                color: wColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    child: const Text(
                      "Let's Go",
                      style: TextStyle(
                          color: pColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(
                  40.0,
                ),
                child: Image(
                    image: AssetImage(
                  "assets/images/education.png",
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
