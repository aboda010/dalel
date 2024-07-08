import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    checkOnBoardingVisited();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Dalel', style: AppTextStyles.pacifico400Style),
    ));
  }

  void delayedNavigate(context, path) {
    Future.delayed(const Duration(seconds: 2), () {
      custemPushReplaceNavigate(context, path);
    });
  }

  void checkOnBoardingVisited() async {
    bool isBoradingVisited =
        await getIt<CacheHelper>().getData(key: 'IsOnBoardingVisited') ?? false;
    if (isBoradingVisited) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, signupView)
          : delayedNavigate(context, homeView);
    } else {
      delayedNavigate(context, onBoardingView);
    }
  }
}
