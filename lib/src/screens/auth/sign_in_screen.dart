import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/base/base_screen.dart';
import 'package:the_king_of_delivery/src/components/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';
import 'package:the_king_of_delivery/src/screens/auth/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
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
                                backgroundColor: CustomColors.customSwatchColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (c) {
                                return BaseScreen();
                              }));
                            },
                            child: const Text(
                              'Entrar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                              color: Color(0xff31C6F7),
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xff31C6F7),
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
                              side: const BorderSide(
                                  width: 2, color: Color(0xff31C6F7))),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) {
                              return SignUpScreen();
                            }));
                          },
                          child: const Text(
                            'Criar Conta',
                            style: TextStyle(
                                color: Color(0xff31C6F7), fontSize: 16),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
