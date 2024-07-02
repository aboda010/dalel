import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedMethod();
    super.initState();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Dalel', style: AppTextStyles.pacifico400Style),
    ));
  }
   void delayedMethod() {
    Future.delayed(const Duration(seconds: 2), () {
      custemNavigate(context, '/on_boarding_view');
    });
  }

}
