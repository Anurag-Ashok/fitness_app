import 'package:fitness_app/routes/name_routes.dart';
import 'package:fitness_app/utils/app_colours.dart';
import 'package:fitness_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class userRegistration extends StatefulWidget {
  const userRegistration({super.key});

  @override
  State<userRegistration> createState() => _userRegistrationState();
}

class _userRegistrationState extends State<userRegistration> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Text(
          "Registration",
          style: Style.whiteheadline6,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
                width: 120,
                child: InkWell(
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: name,
                  decoration: const InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: age,
                  decoration: const InputDecoration(
                      labelText: "Age",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: gender,
                  decoration: const InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: height,
                  decoration: const InputDecoration(
                      labelText: "Height",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weight,
                  decoration: const InputDecoration(
                      labelText: "Weight",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.homeScreen);
                      },
                      child: Text(
                        "Save Details",
                        style: Style.whiteheadline6,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
