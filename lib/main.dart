import 'package:tabs_flutter/estudio_time/login.dart';
import 'package:flutter/material.dart';
import 'package:tabs_flutter/estudio_time/valid_aux.dart';
import 'package:tabs_flutter/estudio_time/Usuarios.dart';
import 'package:tabs_flutter/estudio_time/Recovery.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tabs_flutter/generated/l10n.dart';

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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
