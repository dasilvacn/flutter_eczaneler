import 'package:eczane/iller/adiyaman.dart';
import 'package:eczane/iller/afyon.dart';
import 'package:eczane/iller/agri.dart';
import 'package:eczane/iller/ankara.dart';
import 'package:eczane/iller/antalya.dart';
import 'package:eczane/iller/aydin.dart';
import 'package:eczane/iller/balikesir.dart';
import 'package:eczane/iller/bursa.dart';
import 'package:eczane/iller/istanbul.dart';
import 'package:eczane/iller/izmir.dart';
import 'package:eczane/iller/konya.dart';
import 'package:eczane/iller/mugla.dart';
import 'package:eczane/iller/rize.dart';
import 'package:eczane/iller/trabzon.dart';
import 'package:flutter/material.dart';

import 'iller/duzce.dart';

class Iller extends StatefulWidget {
  @override
  _IllerState createState() => _IllerState();
}

class _IllerState extends State<Iller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        children: [
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Ankara()));
            },
            child: ListTile(
              title: Text(
                "Ankara",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Istanbul()));
            },
            child: ListTile(
              title: Text(
                "İstanbul",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Izmir()));
            },
            child: ListTile(
              title: Text(
                "İzmir",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Mugla()));
            },
            child: ListTile(
              title: Text(
                "Muğla",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Bursa()));
            },
            child: ListTile(
              title: Text(
                "Bursa",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Konya()));
            },
            child: ListTile(
              title: Text(
                "Konya",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Trabzon()));
            },
            child: ListTile(
              title: Text(
                "Trabzon",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Rize()));
            },
            child: ListTile(
              title: Text(
                "Rize",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Duzce()));
            },
            child: ListTile(
              title: Text(
                "Düzce",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Antalya()));
            },
            child: ListTile(
              title: Text(
                "Antalya",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Adiyaman()));
            },
            child: ListTile(
              title: Text(
                "Adıyaman",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Afyon()));
            },
            child: ListTile(
              title: Text(
                "Afyon",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Agri()));
            },
            child: ListTile(
              title: Text(
                "Ağrı",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Aydin()));
            },
            child: ListTile(
              title: Text(
                "Aydın",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Balikesir()));
            },
            child: ListTile(
              title: Text(
                "Balıkesir",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
    );
  }
}
