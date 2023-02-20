import 'package:flutter/material.dart';
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
        children: const [
          Text('Is Dark Mode: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),
        ],
        )
    );
  }
}