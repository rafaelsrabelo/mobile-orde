import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';
import 'package:the_king_of_delivery/src/screens/app/navigation_screen.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          NavigationScreen(),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.black),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff31C6F7),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Início'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Pedidos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.start_outlined), label: 'Ranking'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Perfil'),
          ]),
    );
  }
}
