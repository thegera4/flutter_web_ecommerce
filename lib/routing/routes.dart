/*const rootRoute = "/home";

const productsPageDisplayName = "Products";
const productsPageRoute = "/products";

const authenticationDisplayName = "Log In/Out";
const authenticationPageRoute = "/auth";

const productDetailsPageDisplayName = "Product Details";
const productDetailsPageRoute = "/product-details/:productId ";

class MenuItem {
  final String name;
  final String route;

  MenuItem({required this.name, required this.route});
}

List<MenuItem> sideMenuItems = [
  MenuItem(name: productsPageDisplayName, route: productsPageRoute),
  MenuItem(name: authenticationDisplayName, route: authenticationPageRoute),
  MenuItem(name: productDetailsPageDisplayName, route: productDetailsPageRoute),
];*/

import 'package:flutter_web_ecommerce/views/auth/auth_screen.dart';
import 'package:flutter_web_ecommerce/views/home/home_screen.dart';
import 'package:flutter_web_ecommerce/views/product_detail/product_detail_screen.dart';
import 'package:flutter_web_ecommerce/views/products/products_screen.dart';
import 'package:get/get.dart';

class AppPages{
  static const String root = '/';
  static const String products = '/products';
  static const String productDetails = '/product-details/:productId';
  static const String authentication = '/auth';

  static final routes = [
    GetPage(name: root, page: () => const HomeScreen()),
    GetPage(name: products, page: () => const ProductsScreen()),
    GetPage(
        name: productDetails,
        page: () => const ProductDetailScreen(),
        arguments: const {'productId': null}
    ),
    GetPage(name: authentication, page: () => const AuthenticationPage()),
  ];
}
