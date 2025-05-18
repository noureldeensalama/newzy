import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/shared/colors_and_themes/color.dart';

ThemeData lightTheme = ThemeData(
  // primarySwatch: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
      color: buttonColor,
    ),
    titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 25.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'MainFont',
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: buttonColor,
    elevation: 20.0,
    backgroundColor: Colors.white
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: 'MainFont',
    ),
    bodyMedium: TextStyle(
      fontSize: 15.0,
      height: 1.5,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: 'MainFont',
    ),
  ),
  fontFamily: 'MainFont',
);
ThemeData darkTheme = ThemeData(
  // primarySwatch: Colors.deepOrange,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('#292929'),
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: HexColor('#292929'),
    elevation: 0.0,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'MainFont',
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: buttonColor,
    unselectedItemColor: Colors.white,
    elevation: 30.0,
    backgroundColor: HexColor('#292929'),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: 'MainFont',
    ),
    bodyMedium: TextStyle(
      fontSize: 15.0,
      height: 1.5,
      fontWeight: FontWeight.bold,
      color: textColor,
      fontFamily: 'MainFont',
    ),
  ),
  fontFamily: 'MainFont',
  scaffoldBackgroundColor: HexColor('#292929'),
);


//
// ThemeData darkTheme = ThemeData(
//   primarySwatch: defaultColor,
//   scaffoldBackgroundColor: HexColor('333739'),
//   appBarTheme: AppBarTheme(
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: HexColor('333739'),
//       statusBarIconBrightness: Brightness.light,
//     ),
//     titleTextStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 20.0,
//         fontWeight: FontWeight.bold
//     ),
//     backgroundColor: HexColor('333739'),
//     elevation: 0.0,
//   ),
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: Colors.deepOrange,
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: Colors.deepOrange,
//     unselectedItemColor: Colors.grey,
//     elevation: 20.0,
//     backgroundColor: HexColor('333739'),
//   ),
//   iconTheme: IconThemeData(
//     color: Colors.white,
//   ),
//   // textTheme: TextTheme(
//   //   bodyText1: TextStyle(
//   //     fontSize: 18.0,
//   //     fontWeight: FontWeight.bold,
//   //     color: Colors.white
//   //   )
//   // ),
//   fontFamily: 'GeneralFont',
// );



// ThemeData lightTheme = ThemeData(
//   primarySwatch: defaultColor,
//   scaffoldBackgroundColor: Colors.white,
//   appBarTheme: AppBarTheme(
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: Colors.white,
//       statusBarIconBrightness: Brightness.dark,
//     ),
//     iconTheme: IconThemeData(
//       color: Colors.black
//     ),
//     titleTextStyle: TextStyle(
//         color: Colors.black,
//         fontSize: 30.0,
//       fontFamily: 'MainFont',
//     ),
//     backgroundColor: Colors.white,
//     elevation: 0.0,
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: Colors.lightBlueAccent,
//     elevation: 20.0,
//
//   ),
//   iconTheme: IconThemeData(
//     color: Colors.black,
//   ),
//   textTheme: TextTheme(
//     bodyLarge: TextStyle(
//       fontSize: 18.0,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//       fontFamily: 'MainFont',
//     ),
//     bodyMedium: TextStyle(
//       fontSize: 15.0,
//       height: 1.5,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//       fontFamily: 'MainFont',
//     ),
//   ),
//   fontFamily: 'MainFont',
// );
//
//
// ThemeData darkTheme = ThemeData(
//   primarySwatch: defaultColor,
//   scaffoldBackgroundColor: HexColor('333739'),
//   appBarTheme: AppBarTheme(
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: HexColor('333739'),
//       statusBarIconBrightness: Brightness.light,
//     ),
//     titleTextStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 20.0,
//         fontWeight: FontWeight.bold
//     ),
//     backgroundColor: HexColor('333739'),
//     elevation: 0.0,
//   ),
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: Colors.deepOrange,
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: Colors.deepOrange,
//     unselectedItemColor: Colors.grey,
//     elevation: 20.0,
//     backgroundColor: HexColor('333739'),
//   ),
//   iconTheme: IconThemeData(
//     color: Colors.white,
//   ),
//   // textTheme: TextTheme(
//   //   bodyText1: TextStyle(
//   //     fontSize: 18.0,
//   //     fontWeight: FontWeight.bold,
//   //     color: Colors.white
//   //   )
//   // ),
//   fontFamily: 'GeneralFont',
// );

