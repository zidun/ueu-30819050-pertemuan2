import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 2',
      theme: ThemeData(
       primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Tugas Pertemuan 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: new EdgeInsets.all(24),
        child: Column(
          children: [
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Selamat Datang di Universitas Esa Unggul', textAlign: TextAlign.center),
                Text('Program Studi Teknik Informatika - Fakultas Ilmu Komputer', textAlign: TextAlign.center),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("photos/photos.jpeg"),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama Saya : Muhammad Ramdan'),
                      Text('NIM Saya : 30819050', ),
                      Text('Hobby Saya : Badminton',),
                      Text('Pekerjaan Saya : Mobile Developer',),
                      Text('Status Saya : Belum Menikah'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
