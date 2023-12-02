import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/routing/routes.dart';
import 'package:get/get.dart';
import 'menu_item.dart';

// Widget to group all header menu items
class HeaderMenu extends StatefulWidget {
  const HeaderMenu({super.key});

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItems(
          isActive: true,
          title: "Home",
          press: () { Get.toNamed(rootRoute); },
        ),
        MenuItems(
          title: "Products",
          press: () { Get.toNamed(productsPageRoute); },
        ),
        MenuItems(
          title: "Category",
          press: () {},
        ),
        MenuItems(
          title: "Contact Us",
          press: () {},
        ),
      ],
    );
  }
}
