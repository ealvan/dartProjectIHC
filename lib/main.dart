import 'package:flutter/material.dart';
import 'package:tabs_flutter/estudio_time/nav.dart';

void main() {
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Drawer",
      home: Nav(),
      theme: ThemeData(
          primaryColor: Color(0xFF2F008E), accentColor: Color(0xFFFD0303)),
    );
  }
}
