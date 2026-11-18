import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart';
import 'package:pas_flutter/controller/transaksi_controller.dart';

class transaksiPembelianPage extends StatelessWidget {
  transaksiPembelianPage({super.key});

  final controller = Get.put(TransaksiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: const Color.fromARGB(255, 42, 210, 0),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Image.network(
                      controller.gambar,
                      height: 220,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Text(
                  controller.nama,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  controller.harga.toString(),
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  controller.deskripsi,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
