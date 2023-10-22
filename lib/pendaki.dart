import 'package:flutter/material.dart';
import 'package:peak_path_iot/model/dummy_pendaki.dart';

class PendakiScreen extends StatefulWidget {
  @override
  _PendakiScreenState createState() => _PendakiScreenState();
}

class _PendakiScreenState extends State<PendakiScreen> {
  String kataKunci = '';
  List<Pendaki> hasilPencarian = [];
  final PendakiRepository pendakiRepository = PendakiRepository();

  void cariPendaki(String keyword) {
    setState(() {
      kataKunci = keyword;
      hasilPencarian = pendakiRepository.findAll().where((pendaki) {
        return pendaki.nama.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
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
                  'assets/gambar/pendaki.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                cariPendaki(value);
              },
              decoration: InputDecoration(
                labelText: 'Cari Pendaki Berdasarkan Nama',
                prefixIcon: Icon(Icons.search), // Tambahkan ikon "Search" di samping kotak pencarian
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hasilPencarian.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(hasilPencarian[index].imageUrl),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            // Wrap the text in Expanded
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama: ${hasilPencarian[index].nama}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Umur: ${hasilPencarian[index].usia}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Jenis Kelamin: ${hasilPencarian[index].jenisKelamin}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Alamat: ${hasilPencarian[index].alamat}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Grup: ${hasilPencarian[index].grup}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
