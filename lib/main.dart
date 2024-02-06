import 'package:flutter/material.dart';
import 'package:netflixclone/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 18,
            height: 1,
          ),
          titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 1,
          ),
        ),
        //   scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}
