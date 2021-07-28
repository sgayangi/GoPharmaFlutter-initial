class Product {
  final String id;
  final String name;
  final String supplier;
  final bool inStock;
  final double price;
  final boolPrescriptionRequired;
  final String imageURL;
  final String description;

  Product({
    required this.id,
    required this.name,
    this.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
    required this.supplier,
    required this.inStock,
    required this.price,
    required this.boolPrescriptionRequired,
    this.imageURL = "images/pills.png",
  });
}
