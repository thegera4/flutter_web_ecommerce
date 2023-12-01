import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/staggered_all_brands.dart';

class AllBrands extends StatefulWidget {
  const AllBrands({super.key, required this.size});

  final Size size;

  @override
  State<AllBrands> createState() => _AllBrandsState();
}

class _AllBrandsState extends State<AllBrands> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TabBar(
                  indicatorColor: kPrimaryColor,
                  unselectedLabelColor: Colors.black,
                  labelColor: kPrimaryColor,
                  indicatorWeight: 2.0,
                  unselectedLabelStyle: TextStyle(
                      fontSize: widget.size.width > 500 ? 18 : 14,
                  ),
                  labelStyle: TextStyle(
                                fontSize: widget.size.width > 500 ? 18 : 14,
                                fontWeight: FontWeight.bold
                              ),
                  tabs: const [
                    Tab(text: "iPhone"),
                    Tab(text: "Samsung"),
                    Tab(text: "Headphones"),
                  ]
              ),
              SizedBox(
                height: widget.size.width > 770 ? 320 : 600,
                child: TabBarView(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: StaggeredAllBrands(
                            products: iPhoneProducts,
                            size: widget.size,
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: StaggeredAllBrands(
                            products: samsungProducts,
                            size: widget.size,
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: StaggeredAllBrands(
                            products: headphoneProducts,
                            size: widget.size,
                          )
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
    );
  }
}