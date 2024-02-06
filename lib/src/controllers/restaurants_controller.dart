import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_king_of_delivery/src/repositories/restaurants_repository.dart';

class RestaurantsController extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  Set<Marker> markers = Set<Marker>();
  late GoogleMapController _mapsController;

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosition();
    loadRestaurants();
  }

  loadRestaurants() async {
    final restaurants = RestaurantsRepository().restaurants;
    restaurants.forEach((restaurant) async {
      markers.add(
        Marker(markerId: MarkerId(restaurant.name), position: LatLng(restaurant.latitude, restaurant.longitude), onTap: () => {
          // showModalBottomSheet(context: appKey.currentState!.context, builder: (context) => Details)
        })
      );
    });

    notifyListeners();
  }

  getPosition() async {
    try {
      Position position = await _currentPosition();
      lat = position.latitude;
      long = position.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
      await loadRestaurants();
    } catch (e) {
      erro = e.toString();
      notifyListeners();
    }
  }

  Future<Position> _currentPosition() async {
    LocationPermission permission;
    bool active = await Geolocator.isLocationServiceEnabled();
    if (!active) {
      throw ('Por favor, habilite sua localização no smartphone');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw ('Você precisa autorizar o acesso à localização');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw ('Você precisa autorizar o acesso à localização');
    }

    return await Geolocator.getCurrentPosition();
  }
}
