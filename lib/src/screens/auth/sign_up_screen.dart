import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/components/custom_text_field.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomTextField(
                            icon: Icons.email, label: 'Email'),
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        const CustomTextField(
                            icon: Icons.person, label: 'Nome'),
                        const CustomTextField(
                            icon: Icons.phone, label: 'Celular'),
                        const CustomTextField(
                            icon: Icons.file_copy, label: 'CPF'),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              onPressed: () {},
                              child: const Text(
                                'Cadastrar usuário',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                left: 12,
                top: 12,
                child: SafeArea(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
