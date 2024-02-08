import 'package:flutter/material.dart';

class DetailsRestaurantModal extends StatelessWidget {
  final String name;
  final String photo;

  const DetailsRestaurantModal({Key? key, required this.name, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          Image.network(
            photo, // Alterei para o parâmetro correto
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.all(24),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.black.withOpacity(0.7),
            ),
            child: Text(
              name, // Alterei para o parâmetro correto
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
