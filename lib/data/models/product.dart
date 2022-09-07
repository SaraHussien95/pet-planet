class Product {
  final int id;
  final String title, description;
  final String images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: "assets/images/foodtype.jpg",
    title: "Teddy Pet Food Active Beef - 400 gm",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: "assets/images/foodtype.jpg",
    title: "Teddy food",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: "assets/images/foodtype.jpg",
    title: "Teddy food",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: "assets/images/foodtype.jpg",
    title: "teddy food",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: "assets/images/foodtype.jpg",
    title: "5element food",
    price: 500,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
];

const String description =
    "Teddy Active Combines The Best Available Natural Ingredients Which Guarantee Your Dog Maintain The Optimal Body Mass Level. ";
