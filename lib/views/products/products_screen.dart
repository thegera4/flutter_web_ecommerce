import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/products/widgets/all_products.dart';
import 'package:flutter_web_ecommerce/views/products/widgets/sidebar.dart';
import '../../constants.dart';
import '../home/widgets/footer/footer.dart';
import '../home/widgets/header/header.dart';
import '../home/widgets/header/menu_item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Shoptastic!",
                  textScaleFactor: 1.6,
                  style: TextStyle(
                    color: kDarkblueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  MenuItems(
                    isActive: true,
                    title: "Home",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Products",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Category",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Contact Us",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(size: size),
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                children: [
                  Sidebar(size: size),
                  AllProducts(size: size)
                ],
              ),
            ),
            Footer(size: size)
          ],
        ),
      ),
    );
  }
}
