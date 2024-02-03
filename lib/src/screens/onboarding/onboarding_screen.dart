import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_king_of_delivery/src/config/custom_collors.dart';
import 'package:the_king_of_delivery/src/routes/routes.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  bool showBackButton = false;
  final List<Map<String, dynamic>> onboardingData = [
    {
      'title': 'Descubra Vagas em Restaurantes',
      'description':
          'Explore vagas em restaurantes e aplique facilmente. Comece sua jornada profissional hoje!',
      'image': 'assets/onboarding.svg',
      'imageText': '',
    },
    {
      'title': 'Ganhe Recompensas por suas Conquistas',
      'description':
          'Conquiste pontos e desbloqueie benefícios. Transforme sua busca por emprego em uma aventura gratificante!',
      'image': 'assets/onboarding2.svg',
      'imageText': '',
    },
    {
      'title': 'Explore Novas Oportunidades',
      'description':
          'Descubra oportunidades em diferentes restaurantes e bairros. Aplique para empregos com facilidade!',
      'image': 'assets/onboarding3.svg',
      'imageText': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: CustomColors.customSwatchColor,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    onboardingData[currentIndex]['image'],
                    width: 200,
                    height: 200,
                  ),
                  if (currentIndex > 0)
                    Text(
                      onboardingData[currentIndex]['imageText'],
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),
          ),
          LinearProgressIndicator(
            value: currentIndex / (onboardingData.length - 1) * 0.66 + 0.33,
            color: Color(0xff31C6F7),
            backgroundColor: Color(0xff159bc4), // Cor de fundo
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    onboardingData[currentIndex]['title'],
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    onboardingData[currentIndex]['description'],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (currentIndex < onboardingData.length - 1) {
                                currentIndex++;
                                showBackButton = true;
                              } else if (currentIndex == 2) {
                                Navigator.of(context).pushNamed('/signin');
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: CustomColors.customSwatchColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            currentIndex == onboardingData.length - 1
                                ? 'Acessar'
                                : 'Avançar',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.customSwatchColor, // Cor do appbar
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                setState(() {
                  if (currentIndex > 0) {
                    currentIndex--;
                    showBackButton = currentIndex > 0;
                  }
                });
              },
            )
          : null,
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      initialRoute: '/onboarding',
      // home: OnBoardingScreen(),
    ),
  );
}
