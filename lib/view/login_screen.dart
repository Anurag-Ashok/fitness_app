// ignore_for_file: camel_case_types

import 'package:fitness_app/routes/name_routes.dart';
import 'package:fitness_app/utils/app_colours.dart';
import 'package:fitness_app/utils/app_style.dart';

import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
              cacheHeight: 350,
            ),
            Text(
              "Log In",
              style: Style.redheadline6,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                    labelText: "Enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: const InputDecoration(
                    labelText: "Enter your password",
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
                      Navigator.pushNamed(context, RouteName.homeScreen);
                    },
                    child: Text(
                      "Log In",
                      style: Style.whiteheadline6,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to Fitzz App?',
                  style: Style.blackheadline4,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.signupScreen);
                    },
                    child: Text(
                      "SignUp!",
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
