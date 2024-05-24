import 'package:fitness_app/routes/name_routes.dart';
import 'package:fitness_app/routes/routes.dart';
import 'package:fitness_app/utils/app_colours.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true),
    //home: splashScreen(),
    initialRoute: RouteName.splashScreen,
    onGenerateRoute: routes.generateRoute,
  ));
}
