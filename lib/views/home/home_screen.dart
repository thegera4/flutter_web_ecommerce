import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  bool isAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Container(
            color: kWhiteColor,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: kMaxWidth,
                  ),
                  child: Column(
                    children: [
                      Row(
                          children: [
                            const Text(
                              "Logo here",
                              textScaleFactor: 1.6,
                              style: TextStyle(
                                color: kDarkblueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(), // it will take available space
                            MenuItems(
                              title: "Home",
                              press: () { print("clicked home"); },
                            ),
                            MenuItems(
                              title: "Products",
                              press: () { print("clicked products"); },
                            ),
                            isAdmin ?
                              MenuItems(
                                title: "Add Product",
                                press: () { print("clicked add product"); },
                              ) :
                              Container(),
                            MenuItems(
                              title: "Login",
                              press: () { print("clicked login"); },
                            ),
                          ]
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget for each header menu item (Home, About, Services, Contact, etc.)
class MenuItems extends StatefulWidget {
  const MenuItems({Key? key, required this.title, required this.press}) :
        super(key: key);

  final String title;
  final VoidCallback press;


  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10, ),
      child: InkWell(
        onTap: () { widget.press(); },
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric( vertical: 4.0, ),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isHover ?
                  kPrimaryColor : Colors.transparent,
                  width: 4,
                ),
              )
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              color: isHover ?
              kPrimaryColor : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}