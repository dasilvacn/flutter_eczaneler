import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Aydin extends StatefulWidget {
  @override
  _AydinState createState() => _AydinState();
}

class _AydinState extends State<Aydin> {
  Map data;
  List jsonData;

  Future getData() async {
    http.Response response =
        await http.get("http://api.kodlama.net/eczane/il/09");
    data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      jsonData = data["data"];
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Aydın"),
          backgroundColor: Colors.blueGrey,
          elevation: 10,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  // ECZANE ADI
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      jsonData[index]["eczane_adi"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(),
                  //ECZANE İLİ
                  Row(
                    children: [
                      Text(
                        " Eczane İli: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(jsonData[index]["eczane_il"]),
                    ],
                  ),
                  SizedBox(height: 5),
                  // ECZANE İLÇESİ
                  Row(
                    children: [
                      Text(
                        " Eczane İlçesi: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(jsonData[index]["eczane_ilce"]),
                    ],
                  ),
                  SizedBox(height: 5),
                  // ECZANE ADRESİ
                  Row(
                    children: [
                      Text(
                        " Eczane Adresi: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          jsonData[index]["eczane_adres"],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  // ECZANE TELEFONU
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Text(
                          " Eczane Telefonu: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(jsonData[index]["eczane_telefon"]),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            );
          },
          itemCount: jsonData == null ? 0 : jsonData.length,
        ));
  }
}