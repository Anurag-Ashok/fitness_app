// ignore_for_file: avoid_unnecessary_containers

import 'package:fitness_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                  "https://cdn.pixabay.com/photo/2013/07/12/15/21/pie-chart-149727_1280.png"),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Recent Activities", style: Style.blackheadline2),
              ),
              ListTile(
                title: Text(
                  "Swimming",
                  style: Style.blackheadline3,
                ),
                leading: const Icon(
                  Icons.run_circle_outlined,
                  size: 40,
                ),
              ),
              ListTile(
                title: Text(
                  "Running",
                  style: Style.blackheadline3,
                ),
                leading: const Icon(
                  Icons.run_circle_outlined,
                  size: 40,
                ),
              ),
              ListTile(
                title: Text(
                  "Walking",
                  style: Style.blackheadline3,
                ),
                leading: const Icon(
                  Icons.run_circle_outlined,
                  size: 40,
                ),
              ),
              ListTile(
                title: Text(
                  "Push Ups",
                  style: Style.blackheadline3,
                ),
                leading: const Icon(
                  Icons.run_circle_outlined,
                  size: 40,
                ),
              ),
              ListTile(
                title: Text(
                  "Pull Ups",
                  style: Style.blackheadline3,
                ),
                leading: const Icon(
                  Icons.run_circle_outlined,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
