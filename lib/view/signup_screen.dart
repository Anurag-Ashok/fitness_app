// ignore_for_file: camel_case_types

import 'package:fitness_app/routes/name_routes.dart';
import 'package:fitness_app/utils/app_colours.dart';
import 'package:fitness_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  TextEditingController signupEmail = TextEditingController();
  TextEditingController signuppassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Text(
          "Fitzz App",
          style: Style.whiteheadline6,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            Image.asset(
              "images/Fitzz App.png",
              cacheHeight: 280,
            ),
            Text(
              "Sign Up",
              style: Style.redheadline6,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: signupEmail,
                decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: signuppassword,
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: confirmPassword,
                decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.userRegistration);
                    },
                    child: Text(
                      "Sign Up",
                      style: Style.whiteheadline6,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have Account?',
                  style: Style.blackheadline4,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.loginScreen);
                    },
                    child: Text(
                      "Login!",
                      style: Style.redheadline4,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
