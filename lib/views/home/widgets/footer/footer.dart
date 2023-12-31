import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/header/header_menu.dart';

class Footer extends StatefulWidget {
  const Footer({super.key, required this.size});

  final Size size;

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          color: kgreyColor,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          constraints: const BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Shoptastic!",
                      textScaleFactor: 1.6,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  widget.size.width > 500 ? const HeaderMenu() : Container(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
