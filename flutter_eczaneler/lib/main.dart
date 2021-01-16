import 'package:flutter/material.dart';
import 'anasayfa.dart';
import 'iller.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eczane",
      home: AnaSayfa(),
    ),
  );
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _currentIndex = 0;
  final tabs = [
    AnaSayfam(),
    Iller(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ECZANEM"),
        backgroundColor: Colors.blueGrey,
        elevation: 10,
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: tabs[_currentIndex],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      iconSize: 35,
      items: [
        // ANASAYFA
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          // ignore: deprecated_member_use
          title: SizedBox(
            height: 0,
          ),
        ),
        // ŞEHİRE GÖRE ARAMA
        BottomNavigationBarItem(
          icon: Icon(
            Icons.map,
            color: Colors.white,
          ),
          // ignore: deprecated_member_use
          title: SizedBox(
            height: 0,
          ),
        ),
      ],
    );
  }
}
