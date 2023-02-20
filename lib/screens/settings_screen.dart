import 'package:flutter/material.dart';
import 'package:pref_user/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const route = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingScreen'),
      ),
      drawer: const SideMenu(),
      body: Column(
        children: [
          Text('Settings', style: TextStyle(fontSize: 29),),
          Divider(),
          SwitchListTile.adaptive(
            value: isDarkMode, 
            onChanged: (value){
              setState(() {
                isDarkMode = value;
              });
            },
            title: Text('Dark Mode'),
            ),
          Divider(),
          RadioListTile(
            value: 1, 
            groupValue: 1, 
            title: Text('Masculino'),
            onChanged: (value){
            },
            ),
          RadioListTile(
            value: 2, 
            groupValue: 1, 
            title: Text('Femenino'),
            onChanged: (value){
            },
            
            ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(
              decoration: InputDecoration(
                helperText: 'Nombre de usuario',
                labelText: 'Nombre'
              ),
            ),
          )
        ],
      )
    );
  }
}