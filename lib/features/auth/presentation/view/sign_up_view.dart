import 'package:dalel/features/auth/presentation/widget/signup_body.dart';
import 'package:dalel/features/auth/presentation/widget/welcome_message.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(child: WelcomeMessage()),
            ),
            SliverToBoxAdapter(
              child: SignUpBody(),
            )
          ],
        ),
      ),
    );
  }
}
