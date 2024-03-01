import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.text,required this.icon,required this.text2});
final String text;
  final IconData? icon;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color:  Color.fromARGB(255, 212, 210, 210),
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
            Text(
              '$text2',
              style: getBodyStyle(),
            )
                ],
              )

    );
  }
}