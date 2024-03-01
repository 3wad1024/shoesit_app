import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/bottom_nav/nav.dart';
import 'package:shoezy_app/features/on_boarding/login_view.dart';
import 'package:shoezy_app/features/on_boarding/signup_view.dart';

class LogOrSignView extends StatefulWidget {
  const LogOrSignView({super.key});

  @override
  State<LogOrSignView> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LogOrSignView> {
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
                  'assets/background_imag.png',
                ),
              ),
            ),
          ),
        Positioned(
          left:45,
          bottom: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
                CustomButton(
                  onTap:(){
                    pushToWithReplacement(context,const LoginView());
                  } ,
                  text: 'Login',
                   width: 300,
                   color: AppColors.blueColor,
                ),
                const Gap(10),
                CustomButton(
                  text: 'Singup', 
                  onTap: (){
                    pushToWithReplacement(context,const SignUpView());
                  },
                  width: 300,
                  color: AppColors.blueColor,
                  ),
                  const Gap(10),
                  TextButton(
                    onPressed: (){
                      pushToWithReplacement(context,const BottomNav());
                    },
                     child: Text(
                      'Continue as a guest',
                     style: getSmallStyle(color: AppColors.whiteColor),
                     )
                     )
              ],
            ),
          )

      ]),
    );
  }
}