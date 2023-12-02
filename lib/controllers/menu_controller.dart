import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  //var activeItem = overViewPageDisplayName.obs;
  //var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    //activeItem.value = itemName;
  }

  onHover(String itemName) {
    //if (!isActive(itemName)) hoverItem.value = itemName;
  }

  //bool isActive(String itemName) => activeItem.value == itemName;
  //bool isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case productsPageDisplayName:
        return customIcon(Icons.shopping_bag_outlined, itemName);
      case authenticationDisplayName:
        return customIcon(Icons.login, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    //if (isActive(itemName)) return Icon(icon, size: 22, /*color: dark*/);
    return Icon(icon, size: 22, /*color: isHovering(itemName) ? dark : lightGray*/);
  }
}
