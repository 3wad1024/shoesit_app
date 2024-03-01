import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/features/on_boarding/log_or_singn_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 7),
      () {
        pushToWithReplacement(context, const LogOrSignView());
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                
                image: AssetImage(
                  'assets/background_logo.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/shoe_logo.png"),
                const Gap(10),
                  Text(
                  
                  'Shoezy',
                  style: getTitleStyle(
                    color: AppColors.whiteColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}