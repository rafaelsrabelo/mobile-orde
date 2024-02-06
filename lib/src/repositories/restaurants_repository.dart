import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/models/restaurant.dart';

class RestaurantsRepository extends ChangeNotifier {
  final List<Restaurant> _restaurants = [
    Restaurant(
      name: 'Galetos do Brasil',
      addres: 'R. Floriano Peixoto, 2476 ALTOS - Fátima, Fortaleza - CE',
      photo:
          'https://lh3.googleusercontent.com/p/AF1QipMsEm4hXwtzdHtG2rR-Z6EokGURCrTT2r4yI85X=s680-w680-h510',
      latitude: -3.7488,
      longitude: -38.5420,
    ),

  ];

  List<Restaurant> get restaurants => _restaurants;
}
