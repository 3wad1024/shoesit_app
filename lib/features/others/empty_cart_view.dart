import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';
import 'package:shoezy_app/core/widgets/custom_button.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

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
        
            padding: const EdgeInsets.all(7),
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/empty.png'),
                  const Gap(50),
                  Text(
                    'Unfortunately ,Your Cart Is Empty',
                    style: getTitleStyle(),
                      
                  ),
                  const Gap(10),
                  Text(
                    'Please add something in your cart',
                    style: getSmallStyle(color: AppColors.blackColor),
                  ),
                  
                 const Gap(150),
                 CustomButton(text: 'continue shopping', onTap: (){}, width: 200,)
                      
               
                ],
              ),
            ),
          ),
        ));
  }
}