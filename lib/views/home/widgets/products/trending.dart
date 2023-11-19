import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

// Widget to show trending products
class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        onHover: (value) { setState(() { isHover = value; });},
        child: Container(
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
                      "assets/products/samsung/samsung1.jpeg",
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Samsung Mobile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("\$ 100", style: TextStyle(fontSize: 16,),),
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
