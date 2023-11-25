import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/iphone_products.dart';

class AllBrands extends StatefulWidget {
  const AllBrands({super.key});

  @override
  State<AllBrands> createState() => _AllBrandsState();
}

class _AllBrandsState extends State<AllBrands> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.black,
                labelColor: kPrimaryColor,
                indicatorWeight: 2.0,
                unselectedLabelStyle: TextStyle(fontSize: 18),
                labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: "iPhone"),
                  Tab(text: "Samsung"),
                  Tab(text: "Headphones"),
                ]
            ),
            SizedBox(
              height: 1100,
              child: TabBarView(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: IphoneProducts()),
                    Text("SAMSUNG"),
                    Text("HEADPHONES"),
                  ]
              ),
            ),
          ],
        ),
    );
  }
}