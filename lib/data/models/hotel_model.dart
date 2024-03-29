class HotelModel {
  HotelModel({
    required this.hotelImage,
    required this.hotelName,
    required this.location,
    required this.awayKilometers,
    required this.star,
    required this.numberOfReview,
    required this.price,
  });

  final String hotelImage;
  final String hotelName;
  final String location;
  final String awayKilometers;
  final double star;
  final int numberOfReview;
  final int price;
}