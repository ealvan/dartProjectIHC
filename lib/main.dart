import 'package:tabs_flutter/estudio_time/login.dart';
import 'package:flutter/material.dart';
import 'package:tabs_flutter/estudio_time/valid_aux.dart';
import 'package:tabs_flutter/estudio_time/Usuarios.dart';
import 'package:tabs_flutter/estudio_time/Recovery.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tabs_flutter/generated/l10n.dart';
import 'package:tabs_flutter/charts/home.dart';
import 'package:tabs_flutter/charts/pie.dart';
import 'package:tabs_flutter/charts/horBar.dart';
import 'package:tabs_flutter/charts/areaChart.dart';
import 'package:tabs_flutter/charts/pointChart.dart';

void main() {
  runApp(MyApp());
}

final m5 = Padding(
  padding: EdgeInsets.all(8.0),
  child: Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Tasa de remuneraciones por jugadores',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: PointsLineChart.withSampleData(),
          ),
        ],
      ),
    ),
  ),
);
final m4 = Padding(
  padding: EdgeInsets.all(8.0),
  child: Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Lesiones por temporada',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: AreaAndLineChart.withSampleData(),
          ),
        ],
      ),
    ),
  ),
);
final m3 = Padding(
  padding: EdgeInsets.all(8.0),
  child: Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Taza de intercambio por equipo',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: HorizontalBarChart.withSampleData(),
          ),
        ],
      ),
    ),
  ),
);
final m2 = Padding(
  padding: EdgeInsets.all(8.0),
  child: Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Porcentaje de contribucion al equipo Alianza Lima',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: MiApp(),
          ),
        ],
      ),
    ),
  ),
);
final m1 = Padding(
  padding: EdgeInsets.all(8.0),
  child: Container(
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            'SO₂ emissions, by world region (in million tonnes)',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: HomePage(),
          ),
        ],
      ),
    ),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.login_rounded)),
                Tab(icon: Icon(Icons.person_add_alt_1_rounded)),
                Tab(icon: Icon(Icons.precision_manufacturing_rounded)),
                Tab(icon: Icon(Icons.mail_outline_rounded)),
                Tab(icon: Icon(Icons.login_rounded)),
              ],
            ),
            title: Text('App Alianza Lima'),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              m2,
              m3,
              m4,
              m5,
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
