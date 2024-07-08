
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 152, bottom: 50),
      child: Text(
        'Welcome !',
        style: AppTextStyles.poppinsTextStyle600Size28,
      ),
    );
  }
}

