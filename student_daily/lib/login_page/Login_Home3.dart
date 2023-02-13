import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_daily/widjets/Doctor_Appointment.dart';

class Login_page3 extends StatefulWidget {
  const Login_page3({super.key});

  @override
  State<Login_page3> createState() => _Login_page3State();
}

class _Login_page3State extends State<Login_page3> {
  TextEditingController nameController = TextEditingController();
  bool _obscureText = true;
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 146, 240),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset("assets/images/edui.png"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Container(
                  color: Colors.white,
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              _obscureText = !_obscureText;
                            },
                          );
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    obscureText: _obscureText,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return const Doctor();
                        }),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 120, 245, 248)),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.lato(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Text(
                "Privacy Policy",
                style:
                    GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
