import 'package:crypto_tokens_ui/core/themes.dart';
import 'package:crypto_tokens_ui/presentation/widgets/frosted_background_gradient.dart';
import 'package:crypto_tokens_ui/presentation/widgets/get_started_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          TopGradient(),
          SolanaCoinImage(),
          IlluviumImage(),
          BNBImage(),
          TetherImage(),
          TonImage(),
          BitcoinImage(),
          Center(
            child: Padding(padding: EdgeInsets.only(bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CryptoJourneyText(),
                UnlockText(),
                SizedBox(height: 80,),
                GetStartedButton(),
                SizedBox(height: 20,),
                AlreadyText(),
              ],
            ),
            
            ),
          )
        ],
      ),
     
    );
  }
}





















class AlreadyText extends StatelessWidget {
  const AlreadyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Already have an account? ',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.05,
              ),
          children: [
            TextSpan(
              text: 'Login',
              recognizer: TapGestureRecognizer(),
              // ..onTap = viewModel.navigateToLoginPage,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: CTColors.black,
                    fontWeight: FontWeight.w800,
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class UnlockText extends StatelessWidget {
  const UnlockText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Unlock the world of crypto with ease\nand confidence',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
    );
  }
}

class CryptoJourneyText extends StatelessWidget {
  const CryptoJourneyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Your Crypto Journey:\nSimple & Secure',
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class BitcoinImage extends StatelessWidget {
  const BitcoinImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      right: 100,
      child: Image.asset(
        'lib/presentation/images/bitcoin.png',
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TonImage extends StatelessWidget {
  const TonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      right: 100,
      child: Image.asset(
        'lib/presentation/images/ton.png',
        height: 110,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TetherImage extends StatelessWidget {
  const TetherImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 180,
      left: 10,
      child: Image.asset(
        'lib/presentation/images/tether.png',
        height: 170,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BNBImage extends StatelessWidget {
  const BNBImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      right: 0,
      child: Image.asset(
        'lib/presentation/images/bnb.png',
        height: 130,
        fit: BoxFit.cover,
      ),
    );
  }
}

class IlluviumImage extends StatelessWidget {
  const IlluviumImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 35,
      child: Image.asset(
        'lib/presentation/images/illuvium.png',
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}

class SolanaCoinImage extends StatelessWidget {
  const SolanaCoinImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Image.asset(
        'lib/presentation/images/solana.png',
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TopGradient extends StatelessWidget {
  const TopGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // left gradient
        FrostedBackgroundGradient(
          color: CTColors.leftGradientDark,
          leftGradient: CTColors.leftGradientDark,
          rightGradient: CTColors.leftGradientLight,
        ),

        // right gradient
        FrostedBackgroundGradient(
          color: CTColors.rightGradientDark,
          leftGradient: CTColors.rightGradientDark,
          rightGradient: CTColors.rightGradientLight,
        ),
      ],
    );
  }
}
