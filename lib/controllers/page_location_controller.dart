import 'package:flutter_web_ecommerce/constants.dart';
import 'package:get/get.dart';

class PageLocationController extends GetxController {
  var currentPage = home.obs;

  void setPageLocation(String value) => currentPage.value = value;


}