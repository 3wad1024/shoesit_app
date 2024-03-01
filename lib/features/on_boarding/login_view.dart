import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/functions/nav.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';
import 'package:shoezy_app/features/on_boarding/lets_start_view.dart';
import 'package:shoezy_app/features/on_boarding/signup_view.dart';
import 'package:shoezy_app/core/widgets/custom_text_form.dart';

String name = '';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}


class _LoginViewState extends State<LoginView> {
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
                  padding:const EdgeInsets.only(top: 50,),
                  
            
                 
                  decoration: BoxDecoration(
            
                      borderRadius: BorderRadius.circular(60),
                      color: AppColors.whiteColor),
                  child: Padding(
            
                    padding: const EdgeInsets.all(20),
                    child: Column(
                    
                      children: [
                        Image.asset('assets/Vector.png'),
                        const Gap(50),
                        CustomTextForm(
                          textcolor: AppColors.blackColor,
                            sidecolor:AppColors.blackColor,
                            con:TextEditingController() , name: 'email address', lines: 1),
                        const Gap(30),
                        CustomTextForm(
                          textcolor: AppColors.blackColor,
                          sidecolor:AppColors.blackColor,
                          con: TextEditingController(), name: 'password', lines: 1),
                        const Gap(5),
                        Row(
                          children: [
                            IconButton(
                              onPressed:(){} , 
                              icon: Icon(
                                Icons.check_box_outline_blank,
                                color: AppColors.blackColor,
                                size: 20,
                                )),
                            const Gap(0),
                            Text(
                              'remember me',
                              style: getSmallStyle(),
                            ),
                            const Spacer(),
                            Text(
                              'forget password',
                              style: getSmallStyle(),
                            ),
                          ],
                        ),
                        const Gap(80),
                        CustomButton(
                          onTap: () {
                            pushToWithReplacement(context,const StartView());
                          },
                          text: 'Login',
                          style: getBodyStyle(color: AppColors.whiteColor),
                          width: 300,
                          color: AppColors.blueColor,
                        ),
                        const Gap(10),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                            'Dont have an account ?',
                           style: getSmallStyle()
                           ),
                            TextButton(
                              onPressed: (){pushToWithReplacement(context,const SignUpView());},
                              child: Text('Sign up',
                              style: getSmallStyle(color: AppColors.blueColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ));
  }
}
