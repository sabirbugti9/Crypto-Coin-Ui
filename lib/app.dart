import 'package:flutter/material.dart';

import 'core/themes.dart';
import 'presentation/screens/on_boarding_screen.dart';


class CryptoTokens extends StatelessWidget {
  const CryptoTokens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin Craft Crypto Tokens App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const OnBoardingScreen(),
    );
  }
}
