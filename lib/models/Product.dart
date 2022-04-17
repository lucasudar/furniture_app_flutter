class Product {
  final int price;
  final String id, title, category, description, subTitle, image;

  Product(
      {required this.price,
      required this.id,
      required this.title,
      required this.category,
      required this.description,
      required this.subTitle,
      required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      price: json['price'],
      id: json['id'],
      title: json['title'],
      category: json['category'],
      description: json['description'],
      subTitle: json['subTitle'],
      image: json['image'],
    );
  }
}

Product product = Product(
  price: 1000,
  id: '1',
  title: 'Product 1',
  category: 'Category 1',
  description: description,
  subTitle: 'Sub Title 1',
  image: 'assets/images/img_1.png',
);

String description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.';
