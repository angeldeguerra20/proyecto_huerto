import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu de Opciones',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Opciones'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AjustesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Cuenta'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CuentaScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Cartera'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarteraScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cerrar sesión'),
            onTap: () {
              // Aquí puedes agregar la funcionalidad para cerrar sesión
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Cerrar sesión'),
                    content: Text('¿Estás seguro de que deseas cerrar sesión?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancelar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Cerrar sesión'),
                        onPressed: () {
                          // Agregar funcionalidad para cerrar sesión
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Términos y condiciones'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TerminosScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AjustesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Center(
        child: Text('Pantalla de Ajustes'),
      ),
    );
  }
}

class CuentaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta'),
      ),
      body: Center(
        child: Text('Pantalla de Cuenta'),
      ),
    );
  }
}

class CarteraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartera'),
      ),
      body: Center(
        child: Text('Pantalla de Cartera'),
      ),
    );
  }
}

class TerminosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y Condiciones'),
      ),
      body: Center(
        child: Text('Pantalla de Términos y Condiciones'),
      ),
    );
  }
}
