import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';

// Widget to show a card for trending products
class TrendingCard extends StatefulWidget {
  const TrendingCard({
    super.key,
    required this.product,
    required this.press
  });

  final Product product;
  final VoidCallback press;

  @override
  State<TrendingCard> createState() => _TrendingCardState();
}

class _TrendingCardState extends State<TrendingCard> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) { setState(() { isHover = value; });},
      child: AnimatedContainer(
        duration: kDefaultDuration,
        width: 300,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kgreyColor, width: 3,),
          boxShadow: [ if (isHover) kDefaultShadow, ],
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    widget.product.image,
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "\$ ${widget.product.price}",
                    style: const TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
            isHover ?
            Container(
                color: Colors.black12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 40,
                      onPressed: (){},
                      child: const Text(
                        "Quick view",
                        style: TextStyle( color: kWhiteColor, ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 40,
                      onPressed: (){},
                      child: const Text(
                        "Shop now",
                        style: TextStyle( color: kWhiteColor, ),
                      ),
                    )
                  ],
                )
            ) :
            Container(),
          ],
        ),
      ),
    );
  }
}
