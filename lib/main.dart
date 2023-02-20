import 'package:flutter/material.dart';
import 'package:pref_user/screens/screens.dart';

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
        primarySwatch: Colors.brown,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (_) => const HomeScreen(),
        SettingsScreen.route: (_) => const SettingsScreen()
      },
    );
  }
}
