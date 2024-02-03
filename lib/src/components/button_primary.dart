import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  const ButtonPrimary({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = const Color(0xff31C6F7),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
