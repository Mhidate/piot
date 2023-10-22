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
  Pendaki(nama: 'Luffy', jenisKelamin: 'Laki-laki', usia: 25, alamat: 'East Blue',grup: 2, imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Naruto', jenisKelamin: 'Laki-Laki', usia: 28, alamat: 'Konoha',grup: 4,  imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Dazai', jenisKelamin: 'Laki-laki', usia: 29, alamat: 'Port',grup: 1,  imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Sakura', jenisKelamin: 'Perempuan', usia: 27, alamat: 'Konoha',grup: 4,  imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Gojo', jenisKelamin: 'Laki-Laki', usia: 29, alamat: 'Tokyo',grup: 3,  imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Hinata', jenisKelamin: 'Perempuan', usia: 27, alamat: 'Konoha',grup: 4,  imageUrl: 'assets/gambar/akun.png'),
  Pendaki(nama: 'Patrik Star', jenisKelamin: 'Laki-laki', usia: 20, alamat: 'Bikini Bottom',grup: 5,  imageUrl: 'assets/gambar/akun2.png'),
  Pendaki(nama: 'Pain', jenisKelamin: 'Laki-Laki', usia: 30, alamat: 'Amegakure',grup: 5,  imageUrl: 'assets/gambar/akun.png')
  // Tambahkan data pendaki lainnya sesuai kebutuhan
];
