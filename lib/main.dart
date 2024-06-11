import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  @override
  _TeksUtamaState createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  var listNama = [
    'Ana Safitri',
  ];
  var listWarna = [
    Colors.brown,
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo Dunia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.cyan[50],
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    offset: Offset.fromDirection(-15, 53),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Apa kabar',
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    listNama[index % listNama.length],
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: listWarna[index % listWarna.length],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              tooltip: 'Random',
              child: Icon(Icons.refresh),
              onPressed: incrementIndex,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: TeksUtama(),
    ),
  );
}
