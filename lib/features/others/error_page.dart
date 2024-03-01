import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(backgroundColor: AppColors.blackColor,),
        body:
        
         Container(
        
          
        
         
          decoration: BoxDecoration(
             borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              ),
        
              color: AppColors.whiteColor),
          child: Padding(
        
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/error.png'),
                  const Gap(50),
                  Text(
                    'Connection Failed',
                    style: getTitleStyle(),
                      
                  ),
                  const Gap(30),
                  Text(
                    'could not connect to the network',
                    style: getSmallStyle(color: AppColors.blackColor),
                  ),
                  Text(
                    'please check and try again',
                    style: getSmallStyle(),
                  ),
                 const Gap(150),
                 CustomButton(text: 'Retry', onTap: (){}, width: 200,)
                      
               
                ],
              ),
            ),
          ),
        ));

  
  }
}