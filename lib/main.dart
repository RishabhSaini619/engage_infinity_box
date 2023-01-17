import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screen_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENGAGE',
      theme: ThemeData(
        fontFamily: 'Lato',
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.green, // as above
        //   primaryColorDark: Colors.greenAccent, // as above
        //   accentColor: const Color(0xFF00FF00), // as above
        //   cardColor: Colors
        //       .green, // default based on theme brightness, can be set manually
        //   backgroundColor: Colors.green.shade50, // as above
        //   errorColor: const Color(
        //       0xFFFF0000), // default (Colors.red[700]), can be set manually
        //   // default (Brightness.light), can be set manually
        // ),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          displayLarge: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          titleSmall: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Lato',
            fontStyle: FontStyle.italic,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Lato',

            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Lato',
          ),
          bodyMedium: TextStyle(fontFamily: 'Lato'),
          bodyLarge: TextStyle(fontFamily: 'Lato'),
          labelSmall: TextStyle(fontFamily: 'Lato'),
          labelMedium: TextStyle(fontFamily: 'Lato'),
          labelLarge: TextStyle(fontFamily: 'Lato'),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
