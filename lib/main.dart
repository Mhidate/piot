import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:peak_path_iot/beranda.dart';
import 'package:peak_path_iot/lokasi_pos.dart';
import 'package:peak_path_iot/pendaki.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 42, 63),
          titleTextStyle: TextStyle(fontFamily: 'great', fontSize: 20, color: Colors.white),
          title: Center(
            child: Text(
              'Peak Path IoT',
            ),
          )),
      body: Center(
        child: _buildPage(_currentIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        iconSize: 25,
        backgroundColor: Color.fromARGB(255, 16, 42, 63),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.person_search),
            title: Text(
              'Pendaki',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Colors.blue,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.roofing_outlined),
            title: Text(
              'Beranda',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Colors.orange.shade700,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.map_sharp),
            title: Text(
              'Peta',
              style: TextStyle(color: Colors.white),
            ),
            activeColor: Colors.green,
            inactiveColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return PendakiScreen();
      case 1:
        return HomeScreen();
      case 2:
        return MapScreen();
      default:
        return Container();
    }
  }
}
