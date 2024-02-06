import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';
import 'package:the_king_of_delivery/src/controllers/restaurants_controller.dart';


final appKey = GlobalKey();
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: appKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(
                text: 'Olá, ',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: 'Igor Puccy.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4, right: 24),
            child: GestureDetector(
              onTap: () {},
              child: badges.Badge(
                badgeColor: Colors.red,
                badgeContent: const Text(
                  '5',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.notifications,
                  color: CustomColors.customSwatchColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ChangeNotifierProvider<RestaurantsController>(
        create: (context) => RestaurantsController(),
        child: Builder(builder: (context) {
          final local = context.watch<RestaurantsController>();

          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(local.lat, local.long),
              zoom: 18,
            ),
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            myLocationEnabled: true,
            onMapCreated: local.onMapCreated,
            markers: local.markers,
          );
        }),
      ),
    );
  }
}
