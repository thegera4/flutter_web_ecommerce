import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/product_detail/widget/details.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../home/widgets/footer/footer.dart';
import '../home/widgets/header/header.dart';
import '../home/widgets/header/menu_item.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    final productId = Get.parameters['productId'];

    if (kDebugMode) {
      print("productID = $productId");
    }

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
      body: Column(
          children: [
            Header(size: size),
            Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: Details(size: size)
                )
            ),
            Footer(size: size)
          ],
        ),
    );
  }
}
