import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

// Widget to create a product card
class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.press,
    required this.title
  });

  final String image, title;
  final VoidCallback press;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) { setState(() { isHover = value; }); },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: 300,
          decoration: BoxDecoration(
            color: kgreyColor,
            boxShadow: [ if (isHover) kDefaultShadow, ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),
              MaterialButton(
                color: kSecondaryColor,
                height: 40,
                onPressed: (){},
                child: Text(
                  widget.title,
                  style: const TextStyle( color: kWhiteColor, ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
