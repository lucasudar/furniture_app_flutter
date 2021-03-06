import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app_flutter/constants.dart';
import 'package:furniture_app_flutter/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
