import 'package:flutter/material.dart';

import 'Config/AllTitles.dart';
import 'Config/routes/OnGenerateRoute.dart';
import 'view/SplashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AllTitles.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context){
          return SplashScreen();

        }
      },
      onGenerateRoute: OnGenerateRoute.routes,



    );
  }
}

