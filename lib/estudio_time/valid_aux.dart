import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mi primera App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(title: "Flutter Login"),
    );
  }
}

// ************************************************
class EMailTextFormField extends StatefulWidget {
  final void Function(String email) onSaved;

  const EMailTextFormField({Key key, this.onSaved}) : super(key: key);

  @override
  EMailTextFormFieldState createState() => EMailTextFormFieldState();
}

class EMailTextFormFieldState extends State<EMailTextFormField> {
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.email,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color),
          labelText: 'E-Mail...',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        keyboardType: TextInputType.emailAddress,
        controller: _email,
        validator: _validateEmail,
        maxLength: 70,
        onSaved: widget.onSaved, //callback
      ),
    );
  }

  String _validateEmail(String email) {
    // validate E-Mail function...
  }
}

//************************************************ */
class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);
  final String title;
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome> {
  TextStyle style = TextStyle(fontFamily: "Montserrat", fontSize: 15.0);
  String _email;
  Widget build(BuildContext context) {
    final myController_usuario = TextEditingController();
    final myController_apellidos = TextEditingController();
    final myController_nacimiento = TextEditingController();
    void dispose() {
      // Clean up the controller when the widget is disposed.
      myController_usuario.dispose();
      myController_apellidos.dispose();
      myController_nacimiento.dispose();
      super.dispose();
    }

    // User field
    final usuario = TextField(
        controller: myController_usuario,
        decoration: InputDecoration(
          icon: Icon(Icons.person,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color),
          contentPadding: EdgeInsets.all(5.0),
          hintText: "ingrese su usuario",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        ));
    // email Field
    final emailField = EMailTextFormField(
      onSaved: (String email) => _email = email,
    );
    final googleButton = GoogleSignInButton(
      onPressed: () {/* ... */},
      darkMode: false, // default: false
    );
    final facebookButton = FacebookSignInButton(onPressed: () {});
    //contrasenia
    final password = TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.lock_open_rounded,
            size: IconTheme.of(context).size,
            color: IconTheme.of(context).color),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'ingrese su contraseña',
      ),
      autofocus: false,
      obscureText: true,
    );
    //CON firm Password
    final confirmPassword = TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.lock_open_rounded,
            size: IconTheme.of(context).size,
            color: IconTheme.of(context).color),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'confirme su contraseña',
      ),
      autofocus: false,
      obscureText: true,
    );
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has entered by using the
                // TextEditingController.
                content: Text('su registro fue exitoso!!'),
              );
            },
          );
        },
        child: Text("Registrate!",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 5.0),
                usuario,
                SizedBox(height: 5.0),
                emailField,
                SizedBox(
                  height: 5.0,
                ),
                password,
                SizedBox(
                  height: 5.0,
                ),
                confirmPassword,
                SizedBox(
                  height: 5.0,
                ),
                registerButton,
                SizedBox(
                  height: 5.0,
                ),
                googleButton,
                facebookButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
