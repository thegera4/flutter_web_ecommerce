import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

// Widget to create a product card
class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.press,
    required this.title,
    required this.size,
  });

  final String image, title;
  final VoidCallback press;
  final Size size;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) { setState(() { isHover = value; }); },
        child: Container(
          width: widget.size.width <= 770 ? widget.size.width :
                 widget.size.width >= 975 ? 300 : 200,
          padding: const EdgeInsets.symmetric(vertical: 10),
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
