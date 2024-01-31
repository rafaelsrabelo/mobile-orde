import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff31C6F7),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(Icons.start_outlined), label: 'Ranking'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Perfil'),
      ]),
    );
  }
}
