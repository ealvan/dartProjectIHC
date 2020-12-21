import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tabs_flutter/generated/l10n.dart';
//void main() => runApp(Usuarios());

class Usuarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lista de Usuarios",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Usuarios"),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text('Edsel Yael Alvan Ventura'),
                subtitle: Text('ealvan@unsa.edu.pe'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.pending,
                          size: 20.0,
                          color: Colors.brown[900],
                        ),
                        onPressed: () {
                          //nothing
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        size: 20.0,
                        color: Colors.redAccent[400],
                      ),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text('Chuctaya Ruiz Diego Moises'),
                subtitle: Text('dchuctayar@unsa.edu.pe'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.pending,
                          size: 20.0,
                          color: Colors.brown[900],
                        ),
                        onPressed: () {
                          //
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        size: 20.0,
                        color: Colors.redAccent[400],
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text('Esteba Cruz Santos Adilson'),
                subtitle: Text('sestebac@unsa.edu.pe'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.pending,
                          size: 20.0,
                          color: Colors.brown[900],
                        ),
                        onPressed: () {
                          //nothing
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        size: 20.0,
                        color: Colors.redAccent[400],
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                title: Text('Ramos Ticona Gilbert Wil'),
                subtitle: Text('gramosti@unsa.edu.pe'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.pending,
                          size: 20.0,
                          color: Colors.brown[900],
                        ),
                        onPressed: () {
                          //nothing
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        size: 20.0,
                        color: Colors.redAccent[400],
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          tooltip: 'ADD',
          onPressed: () {
            //
          },
          child: new Icon(Icons.add),
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
