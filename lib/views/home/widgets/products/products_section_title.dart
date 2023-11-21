import 'package:flutter/material.dart';
import '../../../../constants.dart';

// Widget to show a title for the products section ("Trending", "Brands", etc.)
class ProductsSectionTitle extends StatefulWidget {
  const ProductsSectionTitle({super.key, required this.title});

  final String title;

  @override
  State<ProductsSectionTitle> createState() => _ProductsSectionTitleState();
}

class _ProductsSectionTitleState extends State<ProductsSectionTitle> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kSecondaryColor,
            width: 3,
          ),
        ),
      ),
      child: Text(
        widget.title,
        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600,),
      ),
    );
  }
}
