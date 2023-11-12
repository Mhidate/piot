import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peak_path_iot/model/dummy_pendaki.dart';

class HomeScreen extends StatelessWidget {
  // Mengambil panjang dari list data dummy pendaki
  int jumlahPendaki = dummyDataPendaki.length;

  // Menghitung jumlah pendaki laki-laki dan perempuan dari data dummy
  int jumlahLakiLaki = dummyDataPendaki.where((pendaki) => pendaki.jenisKelamin == 'Laki-laki').length;
  int jumlahPerempuan = dummyDataPendaki.where((pendaki) => pendaki.jenisKelamin == 'Perempuan').length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Widget Pertama (Di bawah)
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  'assets/gambar/header.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Widget Kedua (Di atas)
          Positioned(
            top: 200,
            left: 50,
            right: 50,
            child: Container(
              width: 400,
              height: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color.fromARGB(255, 246, 244, 244),
                border: Border.all(
                  color: Color.fromARGB(255, 16, 42, 63),
                  width: 2.0,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 9),
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color.fromRGBO(18, 39, 95, 0.766), width: 4.0),
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              'Pendaki Terdaftar Pada :',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              DateFormat('dd MMMM yyyy').format(DateTime.now()), // Mengambil tanggal hari ini
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 9),
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(214, 11, 26, 124)),
                            borderRadius: BorderRadius.circular(9)),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(Icons.man),
                            SizedBox(width: 10),
                            Text(
                              'Laki-laki : $jumlahLakiLaki',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 9),
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(214, 11, 26, 124)),
                            borderRadius: BorderRadius.circular(9)),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(Icons.woman, color: Color.fromARGB(255, 54, 54, 187)),
                            SizedBox(width: 10),
                            Text(
                              'Perempuan : $jumlahPerempuan',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 9),
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(214, 11, 26, 124)),
                            borderRadius: BorderRadius.circular(9)),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.hiking,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Jumlah Keseluruhan : $jumlahPendaki',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      color: Color.fromARGB(0, 255, 255, 255),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.facebook_rounded),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.email_rounded,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.duo_sharp,
                              color: Colors.blueAccent[400],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color.fromRGBO(18, 39, 95, 0.766), width: 4.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
