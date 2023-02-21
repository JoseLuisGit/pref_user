import 'package:flutter/material.dart';
import 'package:pref_user/shared/preferences.dart';
import 'package:pref_user/widgets/widgets.dart';

class HomeScreen extends StatelessWidget{
 const HomeScreen({Key? key}) : super(key: key);

  static const route = 'home';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Is Dark Mode: ${Preferences.getIsDarkMode()}'),
          const Divider(),
          Text('Genero: ${Preferences.getGender()}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.getName()}'),
          const Divider(),
        ],
        )
    );
  }
}