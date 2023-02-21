import 'package:flutter/material.dart';
import 'package:pref_user/providers/theme_provider.dart';
import 'package:pref_user/shared/preferences.dart';
import 'package:provider/provider.dart';
import 'package:pref_user/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const route = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

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
            value: Preferences.getIsDarkMode(),
            onChanged: (value){
              final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

              Preferences.setIsDarkMode = value;
              value ? themeProvider.setThemeDark() : themeProvider.setThemeLight();
              setState(() {
              });
            },
            title: Text('Dark Mode'),
            ),
          Divider(),
          RadioListTile<int>(
            value: 1, 
            groupValue: Preferences.getGender(), 
            title: Text('Masculino'),
            onChanged: (value){
              setState(() {
                Preferences.setGender = value ?? 1;
              });
            },
            ),
          RadioListTile<int>(
            value: 2, 
            groupValue: Preferences.getGender(), 
            title: Text('Femenino'),
            onChanged: (value){
              setState(() {
               Preferences.setGender = value ?? 1;
              });
            },
            
            ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(
              initialValue: Preferences.getName(),
              onChanged: (value){
              setState(() {
                Preferences.setName = value;
              });
              },
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