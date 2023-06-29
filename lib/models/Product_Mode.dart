class Productmodel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final RatingModal rating;
  Productmodel(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.image,
      required this.price,
      required this.rating,
      });
  factory Productmodel.fromJason(jasonDate) {
    return Productmodel(
      id: jasonDate['id'],
      title: jasonDate['title'],
      description: jasonDate['description'],
      category: jasonDate['category'],
      image: jasonDate['image'],
      price: jasonDate['price'],
      rating: RatingModal.fromjason(jasonDate['rating'])
    );
  }
}

class RatingModal {
  final double rate;
  final int count;
  RatingModal({required this.rate, required this.count});
  factory RatingModal.fromjason(JasonDate) {
    return RatingModal(
      rate: JasonDate['rate'],
      count: JasonDate['count'],
    );
  }
}
