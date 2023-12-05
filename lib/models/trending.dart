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

// Our iPhone Products
List<Product> iPhoneProducts = [
  Product(
    id: 1,
    image: 'assets/products/iPhone/iphone1.jpeg',
    title: "iPhone 1",
    price: 164,
  ),
  Product(
    id: 2,
    image: "assets/products/iPhone/iphone2.jpeg",
    title: "iPhone 2",
    price: 150,
  ),
  Product(
    id: 3,
    image: "assets/products/iPhone/iphone3.jpeg",
    title: "iPhone 3",
    price: 145,
  ),
  Product(
    id: 4,
    image: "assets/products/iPhone/iphone4.jpeg",
    title: "iPhone 4",
    price: 136,
  ),
];

// Our samsung Products
List<Product> samsungProducts = [
  Product(
    id: 1,
    image: 'assets/products/samsung/samsung1.jpeg',
    title: "Samsung 1",
    price: 54,
  ),
  Product(
    id: 2,
    image: "assets/products/samsung/samsung2.jpeg",
    title: "Samsung 2",
    price: 80,
  ),
  Product(
    id: 3,
    image: "assets/products/samsung/samsung3.jpeg",
    title: "Samsung 3",
    price: 95,
  ),
  Product(
    id: 4,
    image: "assets/products/samsung/samsung4.jpeg",
    title: "Samsung 4",
    price: 50,
  ),
];

// Our headphone Products
List<Product> headphoneProducts = [
  Product(
    id: 1,
    image: 'assets/products/headphone/headphone1.jpeg',
    title: "Headphone 1",
    price: 34,
  ),
  Product(
    id: 2,
    image: "assets/products/headphone/headphone2.jpeg",
    title: "Headphone 2",
    price: 50,
  ),
  Product(
    id: 3,
    image: "assets/products/headphone/headphone3.jpeg",
    title: "Headphone 3",
    price: 65,
  ),
  Product(
    id: 4,
    image: "assets/products/headphone/headphone4.jpeg",
    title: "Headphone 4",
    price: 30,
  ),
];

List<Product> allProducts = [
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
