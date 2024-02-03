import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:the_king_of_delivery/src/config/custom_collors.dart'; // Importe badges com um alias

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        // centerTitle: true,
        title: const Text.rich(TextSpan(
            style: TextStyle(
              fontSize: 24,
            ),
            children: [
              TextSpan(
                  text: 'Olá, ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  )),
              TextSpan(
                  text: 'James L.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))
            ])),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Pesquise por restaurante...',
                  prefixIcon: const Icon(Icons.search, color: Color(0xff31C6F7)),
                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none))),
            ),
          )
        ],
      ),
    );
  }
}
