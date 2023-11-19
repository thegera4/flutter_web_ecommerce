import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

// Widget for each header menu item (Home, About, Services, Contact, etc.)
class MenuItems extends StatefulWidget {
  const MenuItems({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final bool isActive;


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
                  color: widget.isActive == true ? kPrimaryColor :
                    isHover ? kPrimaryColor : Colors.transparent,
                  width: 4,
                ),
              )
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isActive == true ? kPrimaryColor :
              isHover ? kPrimaryColor : isHover ? kPrimaryColor : Colors.black,
              fontWeight: widget.isActive == true ? FontWeight.bold :
                isHover ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}