import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key, required this.size});

  final Size size;

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("1st ROW of cards"),
        SizedBox(height: 20,),
        Text("2nd ROW of cards"),
        SizedBox(height: 20,),
      ],
    );
  }
}
