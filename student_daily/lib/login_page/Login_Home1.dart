import 'package:flutter/material.dart';

import 'Login_Home2.dart';

// ignore: camel_case_types
class Login_home1 extends StatelessWidget {
  const Login_home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 146, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/login.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
               style: const ButtonStyle(
                
               ),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return const Login_page2();
                      }),
                    ),
                  );
                }),
                child: const Text("Start"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
