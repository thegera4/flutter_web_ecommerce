import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/products/widgets/all_products_group.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key, required this.size});

  final Size size;

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllProductsGroup(size: widget.size),
        const SizedBox(height: 20,),
      ],
    );
  }
}
