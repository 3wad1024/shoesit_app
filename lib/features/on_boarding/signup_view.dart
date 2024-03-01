import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/on_boarding/lets_start_view.dart';
import 'package:shoezy_app/core/widgets/custom_text_form.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: AppColors.whiteColor),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      
                      Text(
                        'Creat Account',
                        style: getTitleStyle(),
                      ),
                      const Gap(50),
                      CustomTextForm(
                        textcolor: AppColors.blackColor,
                        sidecolor:AppColors.blackColor,
          
                          con: TextEditingController(), name: 'email address', lines: 1),
                      const Gap(10),
                      CustomTextForm(
                        textcolor: AppColors.blackColor,
                        sidecolor:AppColors.blackColor,
                          con: TextEditingController(), name: 'mobile number', lines: 1),
                      const Gap(5),
                      CustomTextForm(
                        textcolor: AppColors.blackColor,
                        sidecolor:AppColors.blackColor,
                        con: TextEditingController(), name: 'password', lines: 1),
                      const Gap(5),
                      CustomTextForm(
                        textcolor: AppColors.blackColor,
                        sidecolor:AppColors.blackColor,
                          con: TextEditingController(), name: 'confirm password', lines: 1),
                      const Gap(5),
                      Row(
                        children: [
                          Text(
                            'I agree to terms and conditions',
                            style: getSmallStyle(),
                          ),
                        ],
                      ),
                      const Gap(50),
                      CustomButton(
                        onTap: () {
                          pushToWithReplacement(context,const StartView());
                        },
                        text: 'Sing Up',
                        width: 300,
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
