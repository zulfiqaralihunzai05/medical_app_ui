import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_ui/screens/HomeScreen.dart';
import 'package:medical_app_ui/screens/LoginScreen.dart';
import 'package:medical_app_ui/widgets/NavBarRoots.dart';

import 'SignUpScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavBarRoots()));
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: Color(0xff7165d6),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    "assets/images/doctors.png",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Doctors Appointment",
                  style: TextStyle(
                    color: Color(0xff7165d6),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Color(0xff7165d6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color(0xff7165d6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
