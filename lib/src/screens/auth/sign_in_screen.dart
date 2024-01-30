import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/components/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/moto.svg',
                height: 120,
              )
            ],
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomTextField(label: 'Email', icon: Icons.email),
                const CustomTextField(
                  label: 'Senha',
                  icon: Icons.lock,
                  isSecret: true,
                ),
                SizedBox(
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.teal,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.teal,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          side: const BorderSide(width: 2, color: Colors.teal)),
                      onPressed: () {},
                      child: const Text(
                        'Criar Conta',
                        style: TextStyle(color: Colors.teal, fontSize: 16),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
