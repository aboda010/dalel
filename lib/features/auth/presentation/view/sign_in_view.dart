import 'package:dalel/features/auth/presentation/widget/signin_body.dart';
import 'package:dalel/features/auth/presentation/widget/welcome_banner.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: WelcomeBanner(),
        ),
        SliverToBoxAdapter(
          child: SignInBody(),
        ),
      ],
    ));
  }
}
