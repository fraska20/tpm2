import 'package:flutter/material.dart';

class PanduanPage extends StatefulWidget {
  const PanduanPage({Key? key}) : super(key: key);

  @override
  State<PanduanPage> createState() => _PanduanPageState();
}

class _PanduanPageState extends State<PanduanPage> {
  List<String> panduan = [
    '1.Login',
    'Pertama-tama, buka aplikasi dan masukkan username dan password Anda pada halaman login.',
    ' Jika Anda belum memiliki akun, silakan daftar terlebih dahulu dengan mengklik tombol "Daftar".',
    '2. Menu Utama',
    'Setelah berhasil login, Anda akan diarahkan ke halaman menu utama. ',
    'Di sini terdapat 4 menu yang dapat Anda pilih:',
    '2.1. Daftar Anggota',
    'Menu ini akan menampilkan daftar anggota yang terdaftar dalam aplikasi.',
    ' Anda dapat melihat nama dan NIM anggota.',
    '2.2. Stopwatch',
    'Menu ini akan menampilkan stopwatch yang dapat Anda gunakan untuk mengukur waktu secara akurat.',
    ' Terdapat 3 tombol yang dapat Anda gunakan, yaitu:',
    'Tombol "Start" untuk memulai stopwatch.',
    'Tombol "Stop" untuk menghentikan stopwatch.',
    'Tombol "Reset" untuk mengembalikan stopwatch ke kondisi awal.',
    '2.3. Rekomendasi Makanan',
    'Menu ini akan membantu Anda menemukan rekomendasi makanan berdasarkan jenis makanan yang diinginkan.',
    'Setiap makanan akan dilengkapi dengan gambar dan terdapat tombol "Detail" yang dapat Anda klik untuk menuju link dan melihat penjelasan lengkap dari makanan tersebut.',
    '2.4. Daftar Favorit',
    'Menu ini akan menampilkan daftar makanan favorit Anda.',
    'Anda dapat menambahkan makanan ke daftar favorit dari menu Rekomendasi Makanan dengan menekan tombol "Tambahkan ke Favorit". ',
    'Untuk menghapus makanan dari daftar favorit, Anda dapat melakukannya dari menu Daftar Favorit.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("Panduan"),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: ListView.builder(
            itemCount: panduan.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(panduan[index]),
              );
            },
          ),
        ));
  }
}
