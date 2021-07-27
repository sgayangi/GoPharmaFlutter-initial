class Product {
  final String id;
  final String name;
  final String supplier;
  final bool inStock;
  final double price;
  final boolPrescriptionRequired;
  final String imageURL;

  Product({
    required this.id,
    required this.name,
    required this.supplier,
    required this.inStock,
    required this.price,
    required this.boolPrescriptionRequired,
    this.imageURL = "images/pills.png",
  });
}
