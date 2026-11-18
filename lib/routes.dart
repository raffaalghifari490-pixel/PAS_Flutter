import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pas_flutter/pages/login_page.dart';
import 'package:pas_flutter/pages/menu_drawer.dart';
import 'package:pas_flutter/pages/transaksi_pembelian_page.dart';

class Routes {
  static const String login = '/login';
  static const String menuDrawer = '/menudrawer';
  static const String transaksiPembelian = '/transaksipembelian';


  static final pages = [
    GetPage(name: login, page: () =>  LoginPage()),
    GetPage(name: menuDrawer, page: () => MenuDrawer()),
    GetPage(name: transaksiPembelian, page: () => transaksiPembelianPage()),
  ];
}