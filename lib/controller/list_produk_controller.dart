
import 'package:get/get.dart';
import 'package:pas_flutter/model/produk_model.dart';

class ListProdukController extends GetxController {
  RxList<ProdukModel> listProduk = [
    ProdukModel(
      nama: "Nasi Goreng Spesial",
      harga: 25.000,
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      gambar: "https://www.oppo.com/content/dam/oppo_com/oppo/product-asset-library/reno/reno15-series/en/reno15/white-darkblue-blue/v2/assets/images-design-phone-mo-1-85-6c98e0.png.webp",
    ),

    ProdukModel(
      nama: "Ayam Bakar Madu",
      harga: 30.000,
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      gambar: "https://files.eci.id/documents/product/best/websm-s931blgcxidgr/1739441617-1.webp",
    ),

    ProdukModel(
      nama: "Sate Ayam Madura",
      harga: 28.000,
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      gambar: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-16-ultramarine-select-202409",
    ),

    ProdukModel(
      nama: "Mie Ayam Bakso",
      harga: 20.000,
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      gambar: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-16-ultramarine-select-202409",
    ),

    ProdukModel(
      nama: "Es Teh Manis Jumbo",
      harga: 8.000,
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      gambar: "https://files.eci.id/documents/product/best/webmi17t-12512tbl/1784542265-1.webp",
    ),
  ].obs;

  // Menyimpan daftar produk awal


  // Menyimpan daftar produk awal
  late final List<ProdukModel> produkAwal;

  @override
  void onInit() {
    super.onInit();

    // Menyalin 10 produk sebelum ada yang dihapus
    produkAwal = List<ProdukModel>.from(listProduk);
  }

  // Mengembalikan daftar produk seperti semula
  Future<void> refreshProduk() async {
    await Future.delayed(const Duration(seconds: 2));

    listProduk.assignAll(produkAwal);
  }
}