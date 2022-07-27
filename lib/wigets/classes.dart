class Food {
  final String id;
  final String name;
  final String imagePath;
  //final String description;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food(
      {required this.id,
      required this.name,
      required this.imagePath,
      //this.description,
      required this.category,
      required this.price,
      required this.discount,
      required this.ratings});

  final foods = [
    Food(
      id: "1",
      name: "Hot Cofee",
      imagePath: "assets/images/breakfast.jpeg",
      category: "1",
      price: 22.0,
      discount: 33.5,
      ratings: 99.0,
    ),
    Food(
      id: "1",
      name: "Grilled Chicken",
      imagePath: "assets/images/launch.jpeg",
      category: "2",
      price: 12.0,
      discount: 34.5,
      ratings: 69.0,
    ),
  ];
}
