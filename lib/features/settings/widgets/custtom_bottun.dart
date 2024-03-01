import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key,required this.text,required this.onTap,required this.icon});
  final String text;
  final Function()? onTap; 
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
            onTap: onTap,
             child: Container(
              padding: EdgeInsets.all(10),

              width: double.infinity,
              height: 45,
              decoration:BoxDecoration(
                color:   Color.fromARGB(255, 212, 210, 210),
                borderRadius: BorderRadius.circular(5),
                
             
              ),
              child: Row(
                children: [
                  Icon(icon,color: AppColors.whiteColor,),
                const  Gap(10),
                  Text(
                '$text',
              style:getBodyStyle(),
              ),
            const  Spacer(),
              Icon(Icons.arrow_forward_ios_rounded,color: AppColors.whiteColor,)
                ],
              )
                       ),
           );
  }
}