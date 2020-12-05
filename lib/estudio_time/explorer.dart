import 'package:flutter/material.dart';
import 'package:tabs_flutter/main.dart';
import 'Usuarios.dart';
import 'login.dart';
import 'recovery.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.login_rounded)),
                Tab(icon: Icon(Icons.person_add_alt_1_rounded)),
                Tab(icon: Icon(Icons.precision_manufacturing_rounded)),
                Tab(icon: Icon(Icons.mail_outline_rounded)),
              ],
            ),
            title: Text('App Alianza Lima'),
          ),
          body: TabBarView(
            children: [
              Login(),
              MyApp(),
              Usuarios(),
              Recovery(),
            ],
          ),
        ),
      ),
    );
  }
}
