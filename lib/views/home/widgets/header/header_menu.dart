import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/controllers/page_location_controller.dart';
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

    final PageLocationController pageLocation = Get.put(PageLocationController());

    return Row(
      children: [
        MenuItems(
          isActive: pageLocation.currentPage == RxString(home) ? true : false,
          title: home,
          press: () {
            Get.toNamed(rootRoute);
            pageLocation.setPageLocation(home);
            },
        ),
        MenuItems(
          isActive: pageLocation.currentPage == RxString(products) ? true : false,
          title: products,
          press: () {
            Get.toNamed(productsPageRoute);
            pageLocation.setPageLocation(products);
            },
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
