import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/bottom_nav/nav.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
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
                  'assets/lets start.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Change Your',
                    style: getTitleStyle(color: AppColors.whiteColor),
                  ),
                  const Gap(20),
                  Text(
                    'Style With',
                    style: getTitleStyle(color: AppColors.whiteColor),
                  ),
                  const Gap(20),
                  Text(
                    'Our Shoes',
                    style: getTitleStyle(color: AppColors.whiteColor),
                  ),
                  const Gap(20),
                  CustomButton(
                    width: 300,
                    color: AppColors.blueColor,
                    text: 'Lets Start',
                     onTap: (){
                     pushToWithReplacement(context,const BottomNav());
                     },
                     )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}