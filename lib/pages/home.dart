import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    InformationPage(),
    StepsPage(),
    CommentsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: _pages[_selectedIndex],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Información',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pasos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Comentarios',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                // Handle option 1
                print('Option 1 selected');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Handle option 2
                print('Option 2 selected');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Option 3'),
              onTap: () {
                // Handle option 3
                print('Option 3 selected');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hierba Buena',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '''La hierbabuena es una hierba de olor y un condimento muy apreciado por el aroma y el contenido de
              aceite de sus hojas. Se usa sobre todo en la industria alimenticia y en la elaboración de licores; en menor
              escala se consume deshidratada, para hacer tés, fresca y en combinación con otras especies aromáticas.''',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20.0),
          Text(
            '',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Más detalles sobre la información...',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class StepsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pasos para plantar',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            '''1,- Para sembrar hierbabuena primero se hace un riego de inundación.''',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 15.0),
          Text(
            '''2.- Luego se trazan surcos separados sesenta centímetros, con una pequeña pendiente.''',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '''3.- La mejor época es en primavera y verano. Si hay riego, puede sembrarse en cualquier momento del año; sólo hay que evitar la época de heladas.''',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(height: 10.0),
          Text(
            '''4.- Se hacen hoyos a treinta centímetros
de distancia a un lado del surco, en suelo húmedo, y se entierran uno o dos rizomas en cada uno.''',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}

class CommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Comentarios'),
    );
  }
}
