import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storeweb/screen/login/login_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle (
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Store Web',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        //brightness: Brightness.dark,
      ),
      home: const LoginScreen(),
    );
  }
}


