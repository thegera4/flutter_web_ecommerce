class Product {
  final int id, price;
  final String title, image;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Trending Products, this will be replaced with products from the database

List<Product> trendingProducts = [
  Product(
    id: 1,
    image: 'assets/products/headphone/headphone8.jpeg',
    title: "HeadPhone",
    price: 64,
  ),
  Product(
    id: 2,
    image: "assets/products/iPhone/iphone3.jpeg",
    title: "iPhone",
    price: 150,
  ),
  Product(
    id: 3,
    image: "assets/products/samsung/samsung2.jpeg",
    title: "Samsung",
    price: 45,
  ),
  Product(
    id: 4,
    image: "assets/products/headphone/headphone6.jpeg",
    title: "HeadPhone",
    price: 36,
  ),
];
