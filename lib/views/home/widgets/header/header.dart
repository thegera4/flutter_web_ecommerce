import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import '../../../../responsive.dart';
import 'header_menu.dart';

// Widget for the header (top bar / navigation bar)
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10
                  ),
                  child: Row(
                      children: [
                        if(!Responsive.isDesktop(context))
                        IconButton(
                            onPressed: (){
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu)
                        ),
                        const Text(
                          "Logo here",
                          textScaleFactor: 1.6,
                          style: TextStyle(
                            color: kDarkblueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(), // it will take available space
                        if(Responsive.isDesktop(context))
                        const HeaderMenu(),
                        const Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.search,
                              color: kDarkgreyColor,
                              size: 25,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              color: kDarkgreyColor,
                              size: 25,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.person_outline,
                              color: kDarkgreyColor,
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
