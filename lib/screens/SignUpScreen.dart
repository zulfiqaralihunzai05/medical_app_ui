import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(
                    "assets/images/doctors.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email Address"),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: (){
                          if(passToggle == true){
                            passToggle = false;
                          }
                          else{
                            passToggle = true;
                          }
                          setState(() {

                          });
                        },
                        child: passToggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            :Icon(CupertinoIcons.eye_slash),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
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
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have Account?",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7165d6),
                        ),
                      ),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
