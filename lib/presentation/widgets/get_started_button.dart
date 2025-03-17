import 'package:crypto_tokens_ui/core/themes.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .75,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          backgroundColor: CTColors.black,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Get Started',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: CTColors.backgroundColor,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
