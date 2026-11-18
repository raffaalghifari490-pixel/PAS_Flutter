import 'package:material_ui/material_ui.dart';
import 'package:pas_flutter/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: Routes.login,
      getPages: Routes.pages,
    );
  }
}
