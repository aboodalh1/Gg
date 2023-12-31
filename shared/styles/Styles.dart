import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gg/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData darkTheme=ThemeData(
  scaffoldBackgroundColor: HexColor('333739'),
  appBarTheme:  AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white,
        size: 26),
    backgroundColor: HexColor('333739'),
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light ),
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: HexColor('333739'),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      unselectedItemColor: Colors.white,
      elevation: 20
  ),
  textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,

      ),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins',
        color: Colors.white,
        fontSize: 15
    ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
      color: Colors.white60,
      fontSize: 15,
    ),
     labelMedium: TextStyle(
         color: Colors.white,
       fontSize: 16,

     ),
     labelLarge: TextStyle(
         fontFamily: 'Poppins',
         fontSize: 25,
         fontWeight: FontWeight.w400,
       color: Colors.white
     ),
  ),
  primaryColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: Colors.white
  )

);
ThemeData lightTheme= ThemeData(
  textTheme:  TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,

      ),
      bodySmall: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.grey,
        fontSize: 15
      ),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins',
        color: Colors.black,
      fontSize: 15
    ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        color: defaultColor,
      fontSize: 16,

    ),
    labelLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black54
    ),
  ),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme:  AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black,
        size: 26),
    backgroundColor: Colors.white,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark ),
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      unselectedItemColor: Colors.grey,
      elevation: 20
  ),
  iconTheme:  IconThemeData(
    color: Colors.black,

  ),
);