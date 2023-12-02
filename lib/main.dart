import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/routing/routes.dart';
import 'dart:ui';
import 'package:flutter_web_ecommerce/views/home/home_screen.dart';
import 'package:flutter_web_ecommerce/views/products/products_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      initialRoute: rootRoute,
      //unknownRoute:
        //GetPage(name: '/not-found', page: () => const PageNotFound()),
      defaultTransition: Transition.noTransition,
      getPages: [
        GetPage(name: rootRoute, page: () => const HomeScreen()),
        GetPage(name: productsPageRoute, page: () => const ProductsScreen()),
      ],
      title: 'Shoptastic! e-commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
