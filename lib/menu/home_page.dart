import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/widgets.dart';
import 'package:pas_flutter/controller/list_produk_controller.dart';
import 'package:pas_flutter/routes.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];
              return Card(
                child: ListTile(
                  leading: Image.network(produk.gambar),
                  title: Text(produk.nama),
                  subtitle: Text(produk.harga.toString()),
                  onTap: () {
                    Get.toNamed(Routes.transaksiPembelian, 
                    arguments: {
                      'nama': produk.nama,
                      'harga': produk.harga,
                      'gambar': produk.gambar,
                      'deskripsi': produk.deskripsi,
                    });
                  }
                ),
              );
            },
          ),
        ),
      )
    );
  }
}
