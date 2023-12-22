import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:get/get.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.size});

  final Size size;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {

    final product = Get.arguments?['product'];

    return SizedBox(
      width: kMaxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:[
            Image.asset(
              product.image ?? "assets/products/iPhone/iphone1.jpeg",
              height: 350,
              width: 350,
              fit: BoxFit.contain,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title ?? "Product Title",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  product.description ?? "Product Description",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "\$ ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Add to Cart"),
                  ),
                ),
              ],
            ),
            ],
          ),
        ],
      ),
    );

  }
}
