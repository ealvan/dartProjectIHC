import 'package:flutter/material.dart';
import 'package:tabs_flutter/estudio_time/login.dart';
import 'package:tabs_flutter/estudio_time/recovery.dart';
import 'package:tabs_flutter/estudio_time/usuarios.dart';

class Nav extends StatefulWidget {
  NavState createState() => NavState();
}

class NavState extends State<Nav> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Login();
      case 1:
        return Recovery();
      case 2:
        return Usuarios();
      case 3:
        return Login();
      case 4:
        return Recovery();
    }
  }

  _onSelectPosition(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Navigation"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Juan Perez"),
              accountEmail: Text("jperez@unsa.edu.pe"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  "J",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            new ListTile(
              title: Text("Galleria"),
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectPosition(0);
              },
            ),
            new ListTile(
              title: Text("Estadisticas"),
              leading: Icon(Icons.photo_library),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectPosition(1);
              },
            ),
            Divider(),
            new ListTile(
              title: Text("Configuracion"),
              leading: Icon(Icons.pan_tool),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectPosition(2);
              },
            ),
            new ListTile(
              title: Text("Info Cuenta"),
              leading: Icon(Icons.account_circle),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectPosition(3);
              },
            ),
            new ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.exit_to_app),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectPosition(4);
              },
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
