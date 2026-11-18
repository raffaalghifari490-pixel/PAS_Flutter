import 'package:get/get.dart';

class TransaksiController extends GetxController {
  
  late String nama;
  late double harga;
  late String gambar;
  late String deskripsi;
  final double ppn = 0.5; // 11% PPN

  @override
  void onInit() {
    super.onInit();
    final argumenst = Get.arguments;
    nama = argumenst['nama'];
    harga = argumenst['harga'];
    gambar = argumenst['gambar'];
    deskripsi = argumenst['deskripsi'];
  }

  void hitungTotal() {
    double total = harga + (harga * ppn);
    print('Total Harga: $total');
  }
}