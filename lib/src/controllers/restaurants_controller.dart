import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class RestaurantsController extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';

  RestaurantsController() {
    getPosition();
  }
  getPosition() async {
    try {
      Position position = await _currentPosition();
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      erro = e.toString();
    }
    notifyListeners();
  }

  Future<Position> _currentPosition() async {
    LocationPermission permission;
    bool active = await Geolocator.isLocationServiceEnabled();
    if (!active) {
      return Future.error('Por favor, habilite sua localização no smartphone');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Voce precisa autorizar o acesso à localização');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Voce precisa autorizar o acesso à localização');
    }

    return await Geolocator.getCurrentPosition();
  }
}
