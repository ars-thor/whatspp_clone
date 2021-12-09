import 'package:flutter/material.dart';
import 'package:whatspp_clone/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff25d366))),
      home: const HomePage(),
    );
  }
}
