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
  price: 1600,
  id: '1',
  title: 'Wood Frame',
  category: 'Chair',
  description: description,
  subTitle: 'Tieton Armchair',
  image: 'http://i.imgur.com/sI4GvE6.png',
);

String description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.';
