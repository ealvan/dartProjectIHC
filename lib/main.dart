import 'package:flutter/material.dart';
import 'package:tabs_flutter/estudio_time/Usuarios.dart';
import 'package:tabs_flutter/estudio_time/login.dart';
import 'package:tabs_flutter/estudio_time/recovery.dart';
import 'package:tabs_flutter/estudio_time/valid_aux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              MyApp1(),
              Usuarios(),
              Recovery(),
            ],
          ),
        ),
      ),
    );
  }
}
