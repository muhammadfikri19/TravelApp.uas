class Trending {
  final String id;
  final String image;
  final String name_location;
  // final String alamat;
  final String name;
  final String price;
  final String ratting;

  const Trending({
    required this.id,
    required this.image,
    required this.name_location,
    // required this.alamat,
    required this.name,
    required this.price,
    required this.ratting,
  });

  factory Trending.fromJson(Map<String, dynamic> json) {
    return Trending(
      id: json['id'],
      image: json['image'],
      name_location: json['name_location'],
      // alamat: json['alamat'],
      name: json['name'],
      price: json['price'],
      ratting: json['rating'],
    );
  }
}
