import 'package:flutter/material.dart';
import 'package:pref_user/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'shared/preferences.dart';
import 'package:pref_user/screens/screens.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>ThemeProvider(isDarkMode: Preferences.getIsDarkMode()))
    ],
    child: const MyApp(),
    )

    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (_) => const HomeScreen(),
        SettingsScreen.route: (_) => const SettingsScreen()
      },
    );
  }
}
