import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/products_section_title.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key, required this.size});

  final Size size;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 200,
      height: widget.size.width > 1220 ? widget.size.height : 2050,
      //agregar aqui los breakpoints para mobile
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductsSectionTitle(title: "Category"),
          const SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("All"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("Tennis"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("Iphone"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("Samsung"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const ProductsSectionTitle(title: "Price"),
          const SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("\$0 - \$150")
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("\$150 - \$300"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("\$300 - \$500"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                  const Text("> \$500"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
