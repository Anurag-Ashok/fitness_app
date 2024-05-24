// ignore_for_file: camel_case_types

import 'package:fitness_app/utils/app_colours.dart';
import 'package:fitness_app/utils/app_style.dart';
import 'package:fitness_app/view/homescreen/diatfood_screen.dart';
import 'package:fitness_app/view/homescreen/exercise_screen.dart';
import 'package:fitness_app/view/homescreen/home_screen.dart';
import 'package:fitness_app/view/homescreen/profile_screen.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int pageIndex = 0;
  final pages = [
    const homescreen(),
    const exerciseScreen(),
    const diatfoodScreen(),
    const profileScreen()
  ];

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
        bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      color: pageIndex == 0 ? Colors.white : grayColor,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: Icon(
                      Icons.fitness_center_outlined,
                      color: pageIndex == 1 ? Colors.white : grayColor,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: Icon(
                      Icons.fastfood_sharp,
                      color: pageIndex == 2 ? Colors.white : grayColor,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      color: pageIndex == 3 ? Colors.white : grayColor,
                      size: 30,
                    ),
                  ),
                ])),
        body: pages[pageIndex]);
  }
}
