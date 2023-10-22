class Pendaki {
  final String nama;
  final String jenisKelamin;
  final int usia;
  final String imageUrl;
  final String alamat;
  final int grup;

  Pendaki({
    required this.nama,
    required this.jenisKelamin,
    required this.usia,
    required this.imageUrl,
    required this.alamat,
    required this.grup,
  });
}

class PendakiRepository {
  List<Pendaki> findAll() {
    return dummyDataPendaki;
  }
}

// Contoh data dummy pendaki
List<Pendaki> dummyDataPendaki = [
  Pendaki(nama: 'Pendaki 1', jenisKelamin: 'Laki-laki', usia: 30, alamat: 'pancor',grup: 2, imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 2', jenisKelamin: 'Perempuan', usia: 25, alamat: 'pancor',grup: 4,  imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 3', jenisKelamin: 'Laki-laki', usia: 22, alamat: 'pancor',grup: 5,  imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 4', jenisKelamin: 'Perempuan', usia: 27, alamat: 'pancor',grup: 3,  imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 4', jenisKelamin: 'Perempuan', usia: 27, alamat: 'pancor',grup: 1,  imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 4', jenisKelamin: 'Perempuan', usia: 27, alamat: 'pancor',grup: 2,  imageUrl: 'assets/gambar/home.png'),
  Pendaki(nama: 'Pendaki 4', jenisKelamin: 'Perempuan', usia: 27, alamat: 'pancor',grup: 2,  imageUrl: 'assets/gambar/home.png'),
  // Tambahkan data pendaki lainnya sesuai kebutuhan
];
